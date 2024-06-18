# see component("base") in BUILD.gn
list(APPEND COMPONENT_BASE_SOURCES_WIN_UNPROCESSED
  "base/debug/debugger_win.cc"
  # "base/debug/gdi_debug_util_win.cc"
  # "base/debug/gdi_debug_util_win.h"
)

list(APPEND COMPONENT_BASE_SOURCES ${COMPONENT_BASE_SOURCES_WIN_UNPROCESSED})
