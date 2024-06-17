include_guard( DIRECTORY )

include(${CMAKE_CURRENT_SOURCE_DIR}/cmake/component_base_sources.cmake)

if(IS_WIN)
  include(${CMAKE_CURRENT_SOURCE_DIR}/cmake/component_base_sources_win.cmake)
endif()

message(STATUS "COMPONENT_BASE_SOURCES=${COMPONENT_BASE_SOURCES}")


# NOTE: *filter.cmake must be LAST included file from `${CMAKE_CURRENT_SOURCE_DIR}/cmake/*`
include(${CMAKE_CURRENT_SOURCE_DIR}/cmake/component_base_sources_filter.cmake)