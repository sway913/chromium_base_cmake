find_program(PYTHON_EXECUABLE
    NAMES
        "python.exe"
        "python.bat"
        "python.sh"
        "python"
    PATHS
    $ENV{PATH}
)

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



function(chromium_buildflag_header)
    cmake_parse_arguments(buildflag_header
        ""
        "NAME;HEADER;HEADER_DIR;PREFIX_HEADER"
        "FLAGS;"
        ${ARGN}
    )

    set(response_file "${CMAKE_BINARY_DIR}/${buildflag_header_HEADER_DIR}/${buildflag_header_HEADER}.rsp")

    file(REMOVE ${response_file}) 
    file(APPEND ${response_file} "--flags" )
    
    foreach(flag ${buildflag_header_FLAGS})
        file(APPEND ${response_file} " ${flag}")
    endforeach()
    
    add_custom_command(
        OUTPUT
            "${CMAKE_BINARY_DIR}/${buildflag_header_HEADER_DIR}/${buildflag_header_HEADER}"
        COMMAND 
            ${PYTHON_EXECUABLE} ${PROJECT_SOURCE_DIR}/cmake/script/write_buildflag_header.py  
            "--output=${buildflag_header_HEADER}"
            "--prefix-header=${buildflag_header_PREFIX_HEADER}" 
            "--gen-dir=${CMAKE_BINARY_DIR}/${buildflag_header_HEADER_DIR}"
            "--definitions=${response_file}" 
        COMMENT 
            "generate buildflag_header ${buildflag_header_HEADER}"            
    )

    add_library(${buildflag_header_NAME} INTERFACE)
    target_sources(${buildflag_header_NAME} INTERFACE "${CMAKE_BINARY_DIR}/${buildflag_header_HEADER_DIR}/${buildflag_header_HEADER}")
    target_include_directories(${buildflag_header_NAME}
        INTERFACE
            ${CMAKE_BINARY_DIR}
    )
    add_library(chromium::${buildflag_header_NAME} ALIAS ${buildflag_header_NAME})    
endfunction()


function(chromium_copy_file)
    cmake_parse_arguments(build_file
        ""
        "INPUT_FILE;OUTPUT_DIR"
        ${ARGN}
    )
    set(output_path "${CMAKE_BINARY_DIR}/${build_file_OUTPUT_DIR}")

    file(COPY "${build_file_INPUT_FILE}" DESTINATION "${output_path}")
endfunction()


function(chromium_process_version)
    cmake_parse_arguments(build_version
        ""
        "VERSION_MAJOR;NEXT_VERSION_MAJOR"
        ${ARGN}
    )
    set(VERSION_MAJOR "${build_version_VERSION_MAJOR}")
    set(NEXT_VERSION_MAJOR "${build_version_NEXT_VERSION_MAJOR}")
    configure_file(${CMAKE_CURRENT_SOURCE_DIR}/base/check_version_internal.h.in
               ${CMAKE_BINARY_DIR}/base/check_version_internal.h)
endfunction()