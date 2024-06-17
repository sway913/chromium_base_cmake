include_guard(DIRECTORY)

include(ChromiumBuildFlagHeader)



chromium_buildflag_header(
  NAME
  "logging_buildflags"
  HEADER
  "logging_buildflags.h"
  HEADER_DIR
  "base"
  FLAGS
  "ENABLE_LOG_ERROR_NOT_REACHED=0"
)

chromium_buildflag_header(
  NAME
  "cfi_buildflags"
  HEADER
  "cfi_buildflags.h"
  HEADER_DIR
  "base"
  FLAGS
  "CFI_CAST_CHECK=0"
  "CFI_ICALL_CHECK=0"
  "CFI_ENFORCEMENT_TRAP=0"
  "CFI_ENFORCEMENT_DIAGNOSTIC=0"
)

chromium_buildflag_header(
  NAME
  "protected_memory_buildflags"
  HEADER
  "protected_memory_buildflags.h"
  HEADER_DIR
  "base/memory"
  FLAGS
  "USE_LLD=0"
)

chromium_buildflag_header(
  NAME
  "synchronization_buildflags"
  HEADER
  "synchronization_buildflags.h"
  HEADER_DIR
  "base/synchronization"
  FLAGS
  "ENABLE_MUTEX_PRIORITY_INHERITANCE=0"
)

chromium_buildflag_header(
  NAME
  "anchor_functions_buildflags"
  HEADER
  "anchor_functions_buildflags.h"
  HEADER_DIR
  "android/library_loader"
  FLAGS
  "USE_LLD=0"
  "SUPPORTS_CODE_ORDERING=0"
)

chromium_buildflag_header(
  NAME
  "orderfile_buildflags"
  HEADER
  "orderfile_buildflags.h"
  HEADER_DIR
  "android/orderfile"
  FLAGS
  "DEVTOOLS_INSTRUMENTATION_DUMPING=0"
  "ORDERFILE_INSTRUMENTATION=0"
)

chromium_buildflag_header(
  NAME
  "base_win_buildflags"
  HEADER
  "base_win_buildflags.h"
  HEADER_DIR
  "base/win"
  FLAGS
  "SINGLE_MODULE_MODE_HANDLE_VERIFIER=1"
)

chromium_buildflag_header(
  NAME
  "clang_profiling_buildflags"
  HEADER
  "clang_profiling_buildflags.h"
  HEADER_DIR
  "base"
  FLAGS
  "CLANG_PROFILING=0"
  "CLANG_PROFILING_INSIDE_SANDBOX=0"
  "USE_CLANG_COVERAGE=0"
)

# for base/debug
chromium_buildflag_header(
  NAME
  "debugging_buildflags"
  HEADER
  "debugging_buildflags.h"
  HEADER_DIR
  "base/debug"
  FLAGS
  "DCHECK_IS_CONFIGURABLE=0"
  "ENABLE_PROFILING=0"
  "CAN_UNWIND_WITH_FRAME_POINTERS=0"
  "UNSAFE_DEVELOPER_BUILD=0"
  "CAN_UNWIND_WITH_CFI_TABLE=0"
  "EXCLUDE_UNWIND_TABLES=0"
  "ENABLE_GDBINIT_WARNING=0"
  "ENABLE_LLDBINIT_WARNING=0"
  "EXPENSIVE_DCHECKS_ARE_ON=0"
  "ENABLE_STACK_TRACE_LINE_NUMBERS=0"
  "ENABLE_COMMANDLINE_SEQUENCE_CHECKS=0"
  "ENABLE_ALLOCATION_STACK_TRACE_RECORDER=0"
  "ENABLE_ALLOCATION_TRACE_RECORDER_FULL_REPORTING=0"
)

# for partition_alloc
chromium_buildflag_header(
  NAME
  "partition_alloc_buildflags"
  HEADER
  "partition_alloc_buildflags.h"
  HEADER_DIR
  "partition_alloc"
  FLAGS
  "HAS_64_BIT_POINTERS=1"
  "HAS_MEMORY_TAGGING=0"

  "USE_ALLOCATOR_SHIM=0"
  "USE_PARTITION_ALLOC=0"
  "USE_PARTITION_ALLOC_AS_MALLOC=0"

  "ENABLE_BACKUP_REF_PTR_SUPPORT=0"
  "ENABLE_BACKUP_REF_PTR_SLOW_CHECKS=0"
  "ENABLE_BACKUP_REF_PTR_FEATURE_FLAG=0"
  "ENABLE_BACKUP_REF_PTR_INSTANCE_TRACER=0"
  "ENABLE_DANGLING_RAW_PTR_CHECKS=0"
  "ENABLE_DANGLING_RAW_PTR_FEATURE_FLAG=0"
  "ENABLE_DANGLING_RAW_PTR_PERF_EXPERIMENT=0"
  "ENABLE_POINTER_SUBTRACTION_CHECK=0"
  "ENABLE_POINTER_ARITHMETIC_TRAIT_CHECK=0"
  "BACKUP_REF_PTR_EXTRA_OOB_CHECKS=0"
  "BACKUP_REF_PTR_POISON_OOB_PTR=0"
  "USE_ASAN_BACKUP_REF_PTR=0"
  "USE_ASAN_UNOWNED_PTR=0"
  "USE_HOOKABLE_RAW_PTR=0"
  "ENABLE_GWP_ASAN_SUPPORT=0"
  "FORCIBLY_ENABLE_BACKUP_REF_PTR_IN_ALL_PROCESSES=0"

  "FORCE_ENABLE_RAW_PTR_EXCLUSION=0"

  "USE_FULL_MTE=0"

  "RECORD_ALLOC_INFO=0"
  "USE_FREESLOT_BITMAP=0"
  "GLUE_CORE_POOLS=0"
  "ENABLE_POINTER_COMPRESSION=0"
  "ENABLE_SHADOW_METADATA_FOR_64_BITS_POINTERS=0"
  "USE_FREELIST_POOL_OFFSETS=0"

  "USE_STARSCAN=0"
  "PCSCAN_STACK_SUPPORTED=0"

  "ENABLE_PKEYS=0"
  "ENABLE_THREAD_ISOLATION=0"

  "FORWARD_THROUGH_MALLOC=0"
)

chromium_buildflag_header(
  NAME
  "allocator_buildflags"
  HEADER
  "buildflags.h"
  HEADER_DIR
  "base/allocator"
  FLAGS
  "USE_ALLOCATOR_SHIM=0"
  "USE_NEW_TCMALLOC=0"
)

chromium_buildflag_header(
  NAME
  "pa_debugging_buildflags"
  PREFIX_HEADER
  "pa"
  HEADER
  "debugging_buildflags.h"
  HEADER_DIR
  "partition_alloc/partition_alloc_base/debug"
  FLAGS
  "PA_DCHECK_IS_ON=0"
  "PA_EXPENSIVE_DCHECKS_ARE_ON=0"
  "PA_DCHECK_IS_CONFIGURABLE=0"
  "PA_CAN_UNWIND_WITH_FRAME_POINTERS=0"
)

chromium_buildflag_header(
  NAME
  "chromeos_buildflags"
  HEADER
  "chromeos_buildflags.h"
  HEADER_DIR
  "build"
  FLAGS
  "IS_CHROMEOS_ASH=0"
  "PA_IS_CHROMEOS_ASH=0"
)

chromium_buildflag_header(
  NAME
  "feature_list_buildflags"
  HEADER
  "feature_list_buildflags.h"
  HEADER_DIR
  "base"
  FLAGS
  "ENABLE_BANNED_BASE_FEATURE_PREFIX=0"
)

chromium_buildflag_header(
  NAME
  "raw_ptr_buildflags"
  HEADER
  "raw_ptr_buildflags.h"
  HEADER_DIR
  "partition_alloc"
  FLAGS
  "RAW_PTR_ZERO_ON_CONSTRUCT=0"
  "RAW_PTR_ZERO_ON_MOVE=0"
  "RAW_PTR_ZERO_ON_DESTRUCT=0"
)

chromium_buildflag_header(
  NAME
  "fuzzing_buildflags"
  HEADER
  "fuzzing_buildflags.h"
  HEADER_DIR
  "base"
  FLAGS
  "USE_FUZZING_ENGINE=0"
)

chromium_buildflag_header(
  NAME
  "tracing_buildflags"
  HEADER
  "tracing_buildflags.h"
  HEADER_DIR
  "base"
  FLAGS
  "ENABLE_BASE_TRACING=0"
  "USE_PERFETTO_CLIENT_LIBRARY=0"
  "USE_PERFETTO_TRACE_PROCESSOR=0"
  "OPTIONAL_TRACE_EVENTS_ENABLED=0"
)

chromium_buildflag_header(
  NAME
  "sanitizer_buildflags"
  HEADER
  "sanitizer_buildflags.h"
  HEADER_DIR
  "base"
  FLAGS
  "IS_HWASAN=0"
  "USING_SANITIZER=0"
)

chromium_buildflag_header(
  NAME
  "ios_cronet_buildflags"
  HEADER
  "ios_cronet_buildflags.h"
  HEADER_DIR
  "base/message_loop"
  FLAGS
  "CRONET_BUILD=0"
)

chromium_buildflag_header(
  NAME
  "blink_buildflags"
  HEADER
  "blink_buildflags.h"
  HEADER_DIR
  "build"
  FLAGS
  "USE_BLINK=0"
)

chromium_buildflag_header(
  NAME
  "rust_buildflags"
  HEADER
  "rust_buildflags.h"
  HEADER_DIR
  "base"
  FLAGS
  "RUST_JSON_READER=0"
  "RUST_BASE_CONVERSIONS=0"
)

chromium_buildflag_header(
  NAME
  "ios_buildflags"
  HEADER
  "ios_buildflags.h"
  HEADER_DIR
  "build"
  FLAGS
  "IS_IOS_APP_EXTENSION=0"
)

chromium_buildflag_header(
  NAME
  "power_monitor_buildflags"
  HEADER
  "power_monitor_buildflags.h"
  HEADER_DIR
  "base/power_monitor"
  FLAGS
  "HAS_BATTERY_LEVEL_PROVIDER_IMPL=0"
)


chromium_copy_file(
  NAME "copy config"
  INPUT_FILE "${CMAKE_CURRENT_SOURCE_DIR}/codegen/build_config.h"
  OUTPUT_DIR "build"
)

chromium_copy_file(
  NAME "copy flag"
  INPUT_FILE "${CMAKE_CURRENT_SOURCE_DIR}/codegen/buildflag.h"
  OUTPUT_DIR "build"
)


chromium_process_version(
  NAME "gen version"
  VERSION_MAJOR "1.2"
  NEXT_VERSION_MAJOR "1.3"
)