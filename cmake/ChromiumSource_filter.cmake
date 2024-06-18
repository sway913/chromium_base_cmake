include(ChromiumSource_helps)

if(IS_WIN)
  chromium_source_remove(
    OUT_VAR
    COMPONENT_BASE_SOURCES
    FILES
    "base/linux_util.cc"
    "base/linux_util.h"
  )
endif()

