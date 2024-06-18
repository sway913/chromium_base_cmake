include_guard( DIRECTORY )

set(BASE_LIB_NAME "base")

include(ChromiumSource_build_flags)

# common sources
include(${CMAKE_CURRENT_SOURCE_DIR}/cmake/ChromiumSource.cmake)

# platform sources
if(IS_WIN)
  include(${CMAKE_CURRENT_SOURCE_DIR}/cmake/ChromiumSource_win.cmake)
endif()

message(STATUS "COMPONENT_BASE_SOURCES=${COMPONENT_BASE_SOURCES}")


# NOTE: *filter.cmake must be LAST included file from `${CMAKE_CURRENT_SOURCE_DIR}/cmake/*`
include(${CMAKE_CURRENT_SOURCE_DIR}/cmake/ChromiumSource_filter.cmake)


# link buildflags
list(APPEND BASE_PRIVATE_LIBRARIES chromium::base_win_buildflags)
list(APPEND BASE_PRIVATE_LIBRARIES chromium::allocator_buildflags)
list(APPEND BASE_PRIVATE_LIBRARIES chromium::cfi_buildflags)
list(APPEND BASE_PRIVATE_LIBRARIES chromium::clang_profiling_buildflags)
list(APPEND BASE_PRIVATE_LIBRARIES chromium::chromeos_buildflags)
list(APPEND BASE_PRIVATE_LIBRARIES chromium::logging_buildflags)
list(APPEND BASE_PRIVATE_LIBRARIES chromium::debugging_buildflags)
list(APPEND BASE_PRIVATE_LIBRARIES chromium::fuzzing_buildflags)
list(APPEND BASE_PRIVATE_LIBRARIES chromium::feature_list_buildflags)
list(APPEND BASE_PRIVATE_LIBRARIES chromium::synchronization_buildflags)
list(APPEND BASE_PRIVATE_LIBRARIES chromium::tracing_buildflags)
list(APPEND BASE_PRIVATE_LIBRARIES chromium::protected_memory_buildflags)
list(APPEND BASE_PRIVATE_LIBRARIES chromium::partition_alloc_buildflags)
list(APPEND BASE_PRIVATE_LIBRARIES chromium::pa_debugging_buildflags)
list(APPEND BASE_PRIVATE_LIBRARIES chromium::raw_ptr_buildflags)
list(APPEND BASE_PRIVATE_LIBRARIES chromium::sanitizer_buildflags)
list(APPEND BASE_PRIVATE_LIBRARIES chromium::ios_cronet_buildflags)
list(APPEND BASE_PRIVATE_LIBRARIES chromium::blink_buildflags)
list(APPEND BASE_PRIVATE_LIBRARIES chromium::rust_buildflags)
list(APPEND BASE_PRIVATE_LIBRARIES chromium::ios_buildflags)
list(APPEND BASE_PRIVATE_LIBRARIES chromium::power_monitor_buildflags)

list(APPEND BASE_PUBLIC_DEFINES NO_TCMALLOC)

if(DCHECK_ALWAYS_ON)
    list(APPEND BASE_PUBLIC_DEFINES DCHECK_ALWAYS_ON)
endif()


# source path
set(BASE_ROOT_INCLUDES "${CMAKE_CURRENT_SOURCE_DIR}/base")
include_directories(${BASE_ROOT_INCLUDES})

# abseil
set(ABSEIL_INCLUDES "${CMAKE_CURRENT_SOURCE_DIR}/third_party/abseil-cpp")
include_directories(${ABSEIL_INCLUDES})


set(ROOT_INCLUDES "${CMAKE_CURRENT_SOURCE_DIR}")
include_directories(${ROOT_INCLUDES})

list(APPEND BASE_INCLUDES ${CMAKE_BINARY_DIR}/include)

# partition_alloc path at build directories
set(PA_INCLUDES "${BASE_INCLUDES}/base/allocator/partition_allocator/src")
include_directories(${PA_INCLUDES})

# Maybe using relative paths
set(PA_SOURCES_INCLUDES "${CMAKE_CURRENT_SOURCE_DIR}/base/allocator/partition_allocator/src")
include_directories(${PA_SOURCES_INCLUDES})

list(APPEND CHROMIUM_COMMON_INCLUDE_DIRS ${CMAKE_CURRENT_SOURCE_DIR})

source_group(TREE ${CMAKE_CURRENT_SOURCE_DIR} FILES ${COMPONENT_BASE_SOURCES})

chromium_cc_library(
    NAME
    ${BASE_LIB_NAME}
    SRCS
    ${COMPONENT_BASE_SOURCES}
    PUBLIC_INCLUDES
    ${BASE_INCLUDES}
    ${CMAKE_SOURCE_DIR}
    PUBLIC_DEFINES
    ${BASE_PUBLIC_DEFINES}
    COPTS
    ${CHROMIUM_EXCEPTIONS_FLAG}
    ${BASE_COPTS}
    LINKOPTS
    ${BASE_LINKOPTS}
    LIBRARIES
    ${BASE_PRIVATE_LIBRARIES}
    PUBLIC_LIBRARIES
    ${BASE_PUBLIC_LIBRARIES}
)
