// Copyright 2012 The Chromium Authors
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#include "partition_alloc/partition_alloc_base/logging.h"

#include "build/build_config.h"
#include "partition_alloc/partition_alloc_base/component_export.h"
#include "partition_alloc/partition_alloc_base/debug/alias.h"
#include "partition_alloc/partition_alloc_base/immediate_crash.h"

#include <algorithm>

#if BUILDFLAG(IS_WIN)

#include <io.h>
#include <windows.h>

#endif

#if BUILDFLAG(IS_POSIX) || BUILDFLAG(IS_FUCHSIA)
#include <unistd.h>

#include <cerrno>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#endif

#include "partition_alloc/partition_alloc_base/posix/eintr_wrapper.h"

namespace partition_alloc::internal::logging {

namespace {

int g_min_log_level = 0;

#if !BUILDFLAG(IS_WIN)
void WriteToStderr(const char* data, size_t length) {
  size_t bytes_written = 0;
  int rv;
  while (bytes_written < length) {
    rv = WrapEINTR(write)(STDERR_FILENO, data + bytes_written,
                          length - bytes_written);
    if (rv < 0) {
      // Give up, nothing we can do now.
      break;
    }
    bytes_written += rv;
  }
}
#else   // !BUILDFLAG(IS_WIN)
void WriteToStderr(const char* data, size_t length) {
  HANDLE handle = ::GetStdHandle(STD_ERROR_HANDLE);
  const char* ptr = data;
  const char* ptr_end = data + length;
  while (ptr < ptr_end) {
    DWORD bytes_written = 0;
    if (!::WriteFile(handle, ptr, ptr_end - ptr, &bytes_written, nullptr) ||
        bytes_written == 0) {
      // Give up, nothing we can do now.
      break;
    }
    ptr += bytes_written;
  }
}
#endif  // !BUILDFLAG(IS_WIN)

}  // namespace

void SetMinLogLevel(int level) {
  g_min_log_level = std::min(LOGGING_FATAL, level);
}

int GetMinLogLevel() {
  return g_min_log_level;
}

bool ShouldCreateLogMessage(int severity) {
  if (severity < g_min_log_level) {
    return false;
  }

  // Return true here unless we know ~LogMessage won't do anything.
  return true;
}

int GetVlogVerbosity() {
  return std::max(-1, LOGGING_INFO - GetMinLogLevel());
}

void RawLog(int level, const char* message) {
  if (level >= g_min_log_level && message) {
#if !BUILDFLAG(IS_WIN)
    const size_t message_len = strlen(message);
#else   // !BUILDFLAG(IS_WIN)
    const size_t message_len = ::lstrlenA(message);
#endif  // !BUILDFLAG(IS_WIN)
    WriteToStderr(message, message_len);

    if (message_len > 0 && message[message_len - 1] != '\n') {
      WriteToStderr("\n", 1);
    }
  }
}

}  // namespace partition_alloc::internal::logging
