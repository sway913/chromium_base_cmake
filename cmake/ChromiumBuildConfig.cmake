if (CMAKE_SYSTEM_NAME MATCHES "Windows")
  set(IS_ANDROID false)
  set(IS_CHROMEOS false)
  set(IS_CHROMEOS_ASH false)
  set(IS_FUCHSIA false)
  set(IS_IOS false)
  set(IS_LINUX false)
  set(IS_MAC false)
  set(IS_NACL false)
  set(IS_POSIX false)
  set(IS_WIN true)
  message(STATUS "current platform: ${CMAKE_SYSTEM_NAME}") 
else()
  message(ERROR "Unsupport platform: ${CMAKE_SYSTEM_NAME}")  
endif()