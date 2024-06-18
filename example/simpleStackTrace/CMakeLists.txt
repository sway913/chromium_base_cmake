add_executable(stackTrace 
    "main.cc"
)

# build config
list(APPEND BASE_INCLUDES ${CMAKE_BINARY_DIR}/include)
include_directories(${BASE_INCLUDES})

# partition_alloc path at build directories
set(PA_INCLUDES "${BASE_INCLUDES}/base/allocator/partition_allocator/src")
include_directories(${PA_INCLUDES})

# Maybe using relative paths
set(PA_SOURCES_INCLUDES "${CMAKE_CURRENT_SOURCE_DIR}/base/allocator/partition_allocator/src")
include_directories(${PA_SOURCES_INCLUDES})

message(STATUS "Base includes: ${BASE_INCLUDES}")

target_link_libraries(stackTrace
    PRIVATE
        chromium::base
)