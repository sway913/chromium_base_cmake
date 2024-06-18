cmake_minimum_required(VERSION 3.5)

set(PROJECT_NAME "chromium_base")
set(PROJECT_VERSION 1.0.0.1)
set(CMAKE_CXX_STANDARD 20)

project(${PROJECT_NAME} VERSION ${PROJECT_VERSION})


set_property(GLOBAL PROPERTY USE_FOLDERS ON)

list(APPEND CMAKE_MODULE_PATH
    ${CMAKE_CURRENT_LIST_DIR}/cmake
    ${CMAKE_CURRENT_LIST_DIR}/cmake/copts
)

include(ChromiumBuildConfig)
include(ChromiumConfigureCopts)
include(ChromiumCopts)
include(ChromiumHelpers)


enable_language(ASM)
enable_language(CXX)

if (IS_MAC OR IS_IOS)
    enable_language(OBJC)
    enable_language(OBJCXX)

    set(CMAKE_OBJC_FLAGS ${CMAKE_C_FLAGS})
    set(CMAKE_OBJCXX_FLAGS ${CMAKE_CXX_FLAGS})
endif()

list(APPEND CHROMIUM_COMMON_INCLUDE_DIRS ${CMAKE_CURRENT_SOURCE_DIR})

# build sources entry
include(ChromiumSourceMain)

add_subdirectory(example)
