# See absl/copts/copts.py and absl/copts/generate_copts.py
include(ChromiumCopts)

set(CHROMIUM_LSAN_LINKOPTS "")
set(CHROMIUM_HAVE_LSAN OFF)
set(CHROMIUM_DEFAULT_LINKOPTS "")

set(USE_PARTITION_ALLOC OFF)
set(BASE_USE_PARTITION_ALLOCATOR OFF)

if("${CMAKE_CXX_COMPILER_ID}" MATCHES "Clang")
  # MATCHES so we get both Clang and AppleClang
  if(MSVC)
    # clang-cl is half MSVC, half LLVM
    set(CHROMIUM_DEFAULT_COPTS "${CHROMIUM_CLANG_CL_FLAGS}")
    set(CHROMIUM_DEFAULT_PUBLIC_COPTS "${CHROMIUM_CLANG_CL_PUBLIC_FLAGS}")
    set(CHROMIUM_EXCEPTIONS_FLAG "${CHROMIUM_CLANG_CL_EXCEPTIONS_FLAGS}")
    set(CHROMIUM_DEFAULT_LINKOPTS "${CHROMIUM_MSVC_LINKOPTS}")
    set(CHROMIUM_DEFAULT_PUBLIC_LINKOPTS "${CHROMIUM_MSVC_PUBLIC_LINKOPTS}")
  else()
    set(CHROMIUM_DEFAULT_COPTS "${CHROMIUM_LLVM_FLAGS}")
    set(CHROMIUM_DEFAULT_PUBLIC_COPTS "${CHROMIUM_LLVM_PUBLIC_FLAGS}")
    set(CHROMIUM_EXCEPTIONS_FLAG "${CHROMIUM_LLVM_EXCEPTIONS_FLAGS}")
    set(CHROMIUM_DEFAULT_LINKOPTS "${CHROMIUM_LLVM_LINKOPTS}")
    set(CHROMIUM_DEFAULT_PUBLIC_LINKOPTS "${CHROMIUM_LLVM_PUBLIC_LINKOPTS}")
    if("${CMAKE_CXX_COMPILER_ID}" STREQUAL "Clang")
      # AppleClang doesn't have lsan
      # https://developer.apple.com/documentation/code_diagnostics
      if(NOT CMAKE_CXX_COMPILER_VERSION VERSION_LESS 3.5)
        set(CHROMIUM_LSAN_LINKOPTS "-fsanitize=leak")
        set(CHROMIUM_HAVE_LSAN ON)
      endif()
    endif()
  endif()
elseif("${CMAKE_CXX_COMPILER_ID}" STREQUAL "MSVC")
  set(CHROMIUM_DEFAULT_COPTS "${CHROMIUM_MSVC_FLAGS}")
  set(CHROMIUM_DEFAULT_PUBLIC_COPTS "${CHROMIUM_MSVC_PUBLIC_FLAGS}")
  set(CHROMIUM_EXCEPTIONS_FLAG "${CHROMIUM_MSVC_EXCEPTIONS_FLAGS}")
  set(CHROMIUM_DEFAULT_LINKOPTS "${CHROMIUM_MSVC_LINKOPTS}")
  set(CHROMIUM_DEFAULT_PUBLIC_LINKOPTS "${CHROMIUM_MSVC_PUBLIC_LINKOPTS}")
else()
  message(FATAL_ERROR "Unknown compiler: ${CMAKE_CXX_COMPILER_ID}@${CMAKE_CXX_COMPILER}.  Building with no default flags")
  set(CHROMIUM_DEFAULT_COPTS "")
  set(CHROMIUM_EXCEPTIONS_FLAG "")
endif()

# This flag is used internally for Bazel builds and is kept here for consistency
set(CHROMIUM_EXCEPTIONS_FLAG_LINKOPTS "")

if("${CMAKE_CXX_STANDARD}" EQUAL 98)
  message(FATAL_ERROR "Abseil requires at least C++11")
elseif(NOT "${CMAKE_CXX_STANDARD}")
  message(STATUS "No CMAKE_CXX_STANDARD set, assuming 11")
  set(CHROMIUM_CXX_STANDARD 11)
else()
  set(CHROMIUM_CXX_STANDARD "${CMAKE_CXX_STANDARD}")
endif()


set(BUILDFLAGS_GENERATORS_PATH ${CMAKE_CURRENT_SOURCE_DIR}/codegen/)
