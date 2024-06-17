function(chromium_source_append)
  cmake_parse_arguments(args
    "DISABLE_FILTER"
    "OUT_VAR"
    "FILTER;FILES"
    ${ARGN}
  )
  set(FINAL_FILES "")

  if(args_DISABLE_FILTER)
    set(FINAL_FILES ${args_FILES})
  else()
    if(NOT args_FILTER)
      set(args_FILTER ${sources_assignment_filter})
    endif()

    set(FINAL_FILES ${args_FILES})

    foreach(regular_expression ${args_FILTER})
      # message(STATUS "----------------OUT_VAR${OUT_VAR}: ${regular_expression}-------------------")
      # message(STATUS ${FINAL_FILES})
      list(FILTER FINAL_FILES EXCLUDE REGEX ${regular_expression})

      # message(STATUS "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++")
      # message(STATUS ${FINAL_FILES})
      # message(STATUS "----------------${regular_expression}-------------------")
    endforeach()
  endif()

  list(APPEND FINAL_FILES ${${args_OUT_VAR}})
  set(${args_OUT_VAR} ${FINAL_FILES} PARENT_SCOPE)
endfunction()

function(chromium_source_remove)
  cmake_parse_arguments(args
    ""
    "OUT_VAR"
    "FILTER;FILES"
    ${ARGN}
  )
  set(FINAL_FILES ${${args_OUT_VAR}})
  list(REMOVE_ITEM FINAL_FILES ${args_FILES})
  set(${args_OUT_VAR} ${FINAL_FILES} PARENT_SCOPE)
endfunction()