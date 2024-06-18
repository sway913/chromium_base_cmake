﻿include(ChromiumSource_build_flags)

# see component("base") in BUILD.gn
list(APPEND COMPONENT_BASE_SOURCES_UNPROCESSED
  "base/allocator/allocator_check.cc"
  "base/allocator/allocator_check.h"
  "base/allocator/dispatcher/configuration.h"
  "base/allocator/dispatcher/dispatcher.cc"
  "base/allocator/dispatcher/dispatcher.h"
  "base/allocator/dispatcher/initializer.h"
  "base/allocator/dispatcher/internal/dispatch_data.cc"
  "base/allocator/dispatcher/internal/dispatch_data.h"
  "base/allocator/dispatcher/internal/dispatcher_internal.h"
  "base/allocator/dispatcher/internal/tools.h"
  "base/allocator/dispatcher/memory_tagging.cc"
  "base/allocator/dispatcher/memory_tagging.h"
  "base/allocator/dispatcher/notification_data.h"
  "base/allocator/dispatcher/reentry_guard.cc"
  "base/allocator/dispatcher/reentry_guard.h"
  "base/allocator/dispatcher/subsystem.h"
  "base/allocator/dispatcher/tls.cc"
  "base/allocator/dispatcher/tls.h"
  "base/at_exit.cc"
  "base/at_exit.h"
  "base/atomic_ref_count.h"
  "base/atomic_sequence_num.h"
  "base/atomicops.h"
  "base/atomicops_internals_atomicword_compat.h"
  "base/atomicops_internals_portable.h"
  "base/auto_reset.h"
  "base/barrier_callback.h"
  "base/barrier_closure.cc"
  "base/barrier_closure.h"
  "base/base64.cc"
  "base/base64.h"
  "base/base64url.cc"
  "base/base64url.h"
  "base/base_switches.h"
  "base/big_endian.cc"
  "base/big_endian.h"
  "base/bit_cast.h"
  "base/bits.h"
  "base/callback_list.cc"
  "base/callback_list.h"
  "base/cancelable_callback.h"
  "base/check.cc"
  "base/check.h"
  "base/check_deref.h"
  "base/check_is_test.cc"
  "base/check_is_test.h"
  "base/check_op.cc"
  "base/check_op.h"
  "base/command_line.cc"
  "base/command_line.h"
  "base/compiler_specific.h"
  "base/component_export.h"
  "base/containers/adapters.h"
  "base/containers/buffer_iterator.h"
  "base/containers/checked_iterators.h"
  "base/containers/circular_deque.h"
  "base/containers/contains.h"
  "base/containers/enum_set.h"
  "base/containers/extend.h"
  "base/containers/fixed_flat_map.h"
  "base/containers/fixed_flat_set.h"
  "base/containers/flat_map.h"
  "base/containers/flat_set.h"
  "base/containers/flat_tree.h"
  "base/containers/heap_array.h"
  "base/containers/id_map.h"
  "base/containers/intrusive_heap.cc"
  "base/containers/intrusive_heap.h"
  "base/containers/linked_list.cc"
  "base/containers/linked_list.h"
  "base/containers/lru_cache.h"
  "base/containers/map_util.h"
  "base/containers/queue.h"
  "base/containers/small_map.h"
  "base/containers/span.h"
  "base/containers/stack.h"
  "base/containers/to_value_list.h"
  "base/containers/to_vector.h"
  "base/containers/unique_ptr_adapters.h"
  "base/containers/util.h"
  "base/containers/vector_buffer.h"
  "base/cpu_reduction_experiment.cc"
  "base/cpu_reduction_experiment.h"
  "base/critical_closure.h"
  "base/dcheck_is_on.h"
  "base/debug/alias.cc"
  "base/debug/alias.h"
  "base/debug/asan_invalid_access.cc"
  "base/debug/asan_invalid_access.h"
  "base/debug/asan_service.cc"
  "base/debug/asan_service.h"
  "base/debug/debugger.cc"
  "base/debug/debugger.h"
  "base/debug/dump_without_crashing.cc"
  "base/debug/dump_without_crashing.h"
  "base/debug/leak_annotations.h"
  "base/debug/profiler.cc"
  "base/debug/profiler.h"
  "base/debug/task_trace.cc"
  "base/debug/task_trace.h"
  "base/environment.cc"
  "base/environment.h"
  "base/export_template.h"
  "base/feature_list.cc"
  "base/feature_list.h"
  "base/features.cc"
  "base/features.h"
  "base/file_version_info.h"
  "base/files/block_tests_writing_to_special_dirs.cc"
  "base/files/block_tests_writing_to_special_dirs.h"
  "base/files/dir_reader_fallback.h"
  "base/files/file.cc"
  "base/files/file.h"
  "base/files/file_error_or.h"
  "base/files/file_path.cc"
  "base/files/file_path.h"
  "base/files/file_tracing.cc"
  "base/files/file_tracing.h"
  "base/files/memory_mapped_file.cc"
  "base/files/memory_mapped_file.h"
  "base/files/platform_file.h"
  "base/files/safe_base_name.cc"
  "base/files/safe_base_name.h"
  "base/files/scoped_file.cc"
  "base/files/scoped_file.h"
  "base/format_macros.h"
  "base/functional/bind.h"
  "base/functional/bind_internal.h"
  "base/functional/callback.h"
  "base/functional/callback_forward.h"
  "base/functional/callback_helpers.cc"
  "base/functional/callback_helpers.h"
  "base/functional/callback_internal.cc"
  "base/functional/callback_internal.h"
  "base/functional/callback_tags.h"
  "base/functional/concurrent_callbacks.h"
  "base/functional/concurrent_closures.cc"
  "base/functional/concurrent_closures.h"
  "base/functional/disallow_unretained.h"
  "base/functional/function_ref.h"
  "base/functional/overloaded.h"
  "base/functional/unretained_traits.h"
  "base/hash/hash.cc"
  "base/hash/hash.h"
  "base/hash/legacy_hash.cc"
  "base/hash/legacy_hash.h"
  "base/json/json_common.h"
  "base/json/json_parser.cc"
  "base/json/json_parser.h"
  "base/json/json_reader.cc"
  "base/json/json_reader.h"
  "base/json/json_string_value_serializer.cc"
  "base/json/json_string_value_serializer.h"
  "base/json/json_value_converter.cc"
  "base/json/json_value_converter.h"
  "base/json/json_writer.cc"
  "base/json/json_writer.h"
  "base/json/string_escape.cc"
  "base/json/string_escape.h"
  "base/json/values_util.cc"
  "base/json/values_util.h"
  "base/lazy_instance.h"
  "base/lazy_instance_helpers.cc"
  "base/lazy_instance_helpers.h"
  "base/linux_util.cc"
  "base/linux_util.h"
  "base/location.cc"
  "base/location.h"
  "base/logging.cc"
  "base/logging.h"
  "base/macros/concat.h"
  "base/macros/if.h"
  "base/macros/is_empty.h"
  "base/macros/remove_parens.h"
  "base/macros/uniquify.h"
  "base/memory/aligned_memory.cc"
  "base/memory/aligned_memory.h"
  "base/memory/free_deleter.h"
  "base/memory/memory_pressure_listener.cc"
  "base/memory/memory_pressure_listener.h"
  "base/memory/memory_pressure_monitor.cc"
  "base/memory/memory_pressure_monitor.h"
  "base/memory/nonscannable_memory.cc"
  "base/memory/nonscannable_memory.h"
  "base/memory/page_size.h"
  "base/memory/platform_shared_memory_handle.cc"
  "base/memory/platform_shared_memory_handle.h"
  "base/memory/platform_shared_memory_mapper.h"
  "base/memory/platform_shared_memory_region.cc"
  "base/memory/platform_shared_memory_region.h"
  "base/memory/protected_memory.h"
  "base/memory/ptr_util.h"
  "base/memory/raw_ptr.h"
  "base/memory/raw_ptr_asan_bound_arg_tracker.cc"
  "base/memory/raw_ptr_asan_bound_arg_tracker.h"
  "base/memory/raw_ptr_asan_hooks.cc"
  "base/memory/raw_ptr_asan_hooks.h"
  "base/memory/raw_ptr_asan_service.cc"
  "base/memory/raw_ptr_asan_service.h"
  "base/memory/raw_ptr_cast.h"
  "base/memory/raw_ptr_exclusion.h"
  "base/memory/raw_ref.h"
  "base/memory/raw_scoped_refptr_mismatch_checker.h"
  "base/memory/raw_span.h"
  "base/memory/read_only_shared_memory_region.cc"
  "base/memory/read_only_shared_memory_region.h"
  "base/memory/ref_counted.cc"
  "base/memory/ref_counted.h"
  "base/memory/ref_counted_delete_on_sequence.h"
  "base/memory/ref_counted_memory.cc"
  "base/memory/ref_counted_memory.h"
  "base/memory/safe_ref.h"
  "base/memory/safe_ref_traits.h"
  "base/memory/safety_checks.h"
  "base/memory/scoped_policy.h"
  "base/memory/scoped_refptr.h"
  "base/memory/shared_memory_hooks.h"
  "base/memory/shared_memory_mapper.cc"
  "base/memory/shared_memory_mapper.h"
  "base/memory/shared_memory_mapping.cc"
  "base/memory/shared_memory_mapping.h"
  "base/memory/shared_memory_security_policy.cc"
  "base/memory/shared_memory_security_policy.h"
  "base/memory/shared_memory_tracker.cc"
  "base/memory/shared_memory_tracker.h"
  "base/memory/singleton.h"
  "base/memory/stack_allocated.h"
  "base/memory/unsafe_shared_memory_pool.cc"
  "base/memory/unsafe_shared_memory_pool.h"
  "base/memory/unsafe_shared_memory_region.cc"
  "base/memory/unsafe_shared_memory_region.h"
  "base/memory/values_equivalent.h"
  "base/memory/weak_auto_reset.h"
  "base/memory/weak_ptr.cc"
  "base/memory/weak_ptr.h"
  "base/memory/writable_shared_memory_region.cc"
  "base/memory/writable_shared_memory_region.h"
  "base/message_loop/message_pump.cc"
  "base/message_loop/message_pump.h"
  "base/message_loop/message_pump_default.cc"
  "base/message_loop/message_pump_default.h"
  "base/message_loop/message_pump_for_io.h"
  "base/message_loop/message_pump_for_ui.h"
  "base/message_loop/message_pump_type.h"
  "base/message_loop/work_id_provider.cc"
  "base/message_loop/work_id_provider.h"
  "base/metrics/bucket_ranges.cc"
  "base/metrics/bucket_ranges.h"
  "base/metrics/crc32.cc"
  "base/metrics/crc32.h"
  "base/metrics/dummy_histogram.cc"
  "base/metrics/dummy_histogram.h"
  "base/metrics/field_trial.cc"
  "base/metrics/field_trial.h"
  "base/metrics/field_trial_list_including_low_anonymity.cc"
  "base/metrics/field_trial_list_including_low_anonymity.h"
  "base/metrics/field_trial_param_associator.cc"
  "base/metrics/field_trial_param_associator.h"
  "base/metrics/field_trial_params.cc"
  "base/metrics/field_trial_params.h"
  "base/metrics/histogram.cc"
  "base/metrics/histogram.h"
  "base/metrics/histogram_base.cc"
  "base/metrics/histogram_base.h"
  "base/metrics/histogram_delta_serialization.cc"
  "base/metrics/histogram_delta_serialization.h"
  "base/metrics/histogram_flattener.h"
  "base/metrics/histogram_functions.cc"
  "base/metrics/histogram_functions.h"
  "base/metrics/histogram_macros.h"
  "base/metrics/histogram_macros_internal.h"
  "base/metrics/histogram_macros_local.h"
  "base/metrics/histogram_samples.cc"
  "base/metrics/histogram_samples.h"
  "base/metrics/histogram_snapshot_manager.cc"
  "base/metrics/histogram_snapshot_manager.h"
  "base/metrics/metrics_hashes.cc"
  "base/metrics/metrics_hashes.h"
  "base/metrics/persistent_histogram_allocator.cc"
  "base/metrics/persistent_histogram_allocator.h"
  "base/metrics/persistent_memory_allocator.cc"
  "base/metrics/persistent_memory_allocator.h"
  "base/metrics/persistent_sample_map.cc"
  "base/metrics/persistent_sample_map.h"
  "base/metrics/ranges_manager.cc"
  "base/metrics/ranges_manager.h"
  "base/metrics/record_histogram_checker.h"
  "base/metrics/sample_map.cc"
  "base/metrics/sample_map.h"
  "base/metrics/sample_vector.cc"
  "base/metrics/sample_vector.h"
  "base/metrics/single_sample_metrics.cc"
  "base/metrics/single_sample_metrics.h"
  "base/metrics/sparse_histogram.cc"
  "base/metrics/sparse_histogram.h"
  "base/metrics/statistics_recorder.cc"
  "base/metrics/statistics_recorder.h"
  "base/metrics/user_metrics.cc"
  "base/metrics/user_metrics.h"
  "base/metrics/user_metrics_action.h"
  "base/no_destructor.h"
  "base/not_fatal_until.h"
  "base/notimplemented.h"
  "base/notreached.h"
  "base/observer_list.h"
  "base/observer_list_internal.cc"
  "base/observer_list_internal.h"
  "base/observer_list_threadsafe.cc"
  "base/observer_list_threadsafe.h"
  "base/observer_list_types.cc"
  "base/observer_list_types.h"
  "base/one_shot_event.cc"
  "base/one_shot_event.h"
  "base/parameter_pack.h"
  "base/pending_task.cc"
  "base/pending_task.h"
  "base/pickle.cc"
  "base/pickle.h"
  "base/power_monitor/battery_level_provider.cc"
  "base/power_monitor/battery_level_provider.h"
  "base/power_monitor/battery_state_sampler.cc"
  "base/power_monitor/battery_state_sampler.h"
  "base/power_monitor/power_monitor.cc"
  "base/power_monitor/power_monitor.h"
  "base/power_monitor/power_monitor_device_source.cc"
  "base/power_monitor/power_monitor_device_source.h"
  "base/power_monitor/power_monitor_features.cc"
  "base/power_monitor/power_monitor_features.h"
  "base/power_monitor/power_monitor_source.cc"
  "base/power_monitor/power_monitor_source.h"
  "base/power_monitor/power_observer.h"
  "base/power_monitor/sampling_event_source.cc"
  "base/power_monitor/sampling_event_source.h"
  "base/power_monitor/timer_sampling_event_source.cc"
  "base/power_monitor/timer_sampling_event_source.h"
  "base/process/current_process.cc"
  "base/process/current_process.h"
  "base/process/current_process_test.h"
  "base/process/environment_internal.cc"
  "base/process/environment_internal.h"
  "base/process/process.h"
  "base/process/process_handle.cc"
  "base/process/process_handle.h"
  "base/process/process_info.h"
  "base/rand_util.cc"
  "base/rand_util.h"
  "base/ranges/algorithm.h"
  "base/ranges/functional.h"
  "base/ranges/ranges.h"
  "base/run_loop.cc"
  "base/run_loop.h"
  "base/scoped_add_feature_flags.cc"
  "base/scoped_add_feature_flags.h"
  "base/scoped_clear_last_error.h"
  "base/scoped_environment_variable_override.cc"
  "base/scoped_environment_variable_override.h"
  "base/scoped_generic.h"
  "base/scoped_multi_source_observation.h"
  "base/scoped_observation.h"
  "base/scoped_observation_traits.h"
  "base/sequence_checker.cc"
  "base/sequence_checker.h"
  "base/sequence_checker_impl.cc"
  "base/sequence_checker_impl.h"
  "base/sequence_token.cc"
  "base/sequence_token.h"
  "base/state_transitions.h"
  "base/stl_util.h"
  "base/strings/escape.cc"
  "base/strings/escape.h"
  "base/strings/latin1_string_conversions.cc"
  "base/strings/latin1_string_conversions.h"
  "base/strings/levenshtein_distance.cc"
  "base/strings/levenshtein_distance.h"
  "base/strings/pattern.cc"
  "base/strings/pattern.h"
  "base/strings/safe_sprintf.cc"
  "base/strings/safe_sprintf.h"
  "base/strings/strcat.cc"
  "base/strings/strcat.h"
  "base/strings/strcat_internal.h"
  "base/strings/string_number_conversions.cc"
  "base/strings/string_number_conversions.h"
  "base/strings/string_number_conversions_internal.h"
  "base/strings/string_piece.h"
  "base/strings/string_split.cc"
  "base/strings/string_split.h"
  "base/strings/string_split_internal.h"
  "base/strings/string_tokenizer.h"
  "base/strings/string_util.cc"
  "base/strings/string_util.h"
  "base/strings/string_util_constants.cc"
  "base/strings/string_util_impl_helpers.h"
  "base/strings/string_util_internal.h"
  "base/strings/stringize_macros.h"
  "base/strings/stringprintf.cc"
  "base/strings/stringprintf.h"
  "base/strings/sys_string_conversions.h"
  "base/strings/to_string.h"
  "base/strings/utf_offset_string_conversions.cc"
  "base/strings/utf_offset_string_conversions.h"
  "base/strings/utf_ostream_operators.cc"
  "base/strings/utf_ostream_operators.h"
  "base/strings/utf_string_conversion_utils.cc"
  "base/strings/utf_string_conversion_utils.h"
  "base/strings/utf_string_conversions.cc"
  "base/strings/utf_string_conversions.h"
  "base/synchronization/atomic_flag.cc"
  "base/synchronization/atomic_flag.h"
  "base/synchronization/condition_variable.h"
  "base/synchronization/lock.cc"
  "base/synchronization/lock.h"
  "base/synchronization/lock_impl.h"
  "base/synchronization/waitable_event.cc"
  "base/synchronization/waitable_event.h"
  "base/synchronization/waitable_event_watcher.h"
  "base/sys_byteorder.h"
  "base/syslog_logging.cc"
  "base/syslog_logging.h"
  "base/system/system_monitor.cc"
  "base/system/system_monitor.h"
  "base/task/bind_post_task.h"
  "base/task/bind_post_task_internal.h"
  "base/task/cancelable_task_tracker.cc"
  "base/task/cancelable_task_tracker.h"
  "base/task/common/checked_lock.h"
  "base/task/common/checked_lock_impl.cc"
  "base/task/common/checked_lock_impl.h"
  "base/task/common/lazy_now.cc"
  "base/task/common/lazy_now.h"
  "base/task/common/operations_controller.cc"
  "base/task/common/operations_controller.h"
  "base/task/common/scoped_defer_task_posting.cc"
  "base/task/common/scoped_defer_task_posting.h"
  "base/task/common/task_annotator.cc"
  "base/task/common/task_annotator.h"
  "base/task/current_thread.cc"
  "base/task/current_thread.h"
  "base/task/default_delayed_task_handle_delegate.cc"
  "base/task/default_delayed_task_handle_delegate.h"
  "base/task/deferred_sequenced_task_runner.cc"
  "base/task/deferred_sequenced_task_runner.h"
  "base/task/delay_policy.h"
  "base/task/delayed_task_handle.cc"
  "base/task/delayed_task_handle.h"
  "base/task/lazy_thread_pool_task_runner.cc"
  "base/task/lazy_thread_pool_task_runner.h"
  "base/task/post_job.cc"
  "base/task/post_job.h"
  "base/task/post_task_and_reply_with_result_internal.h"
  "base/task/scoped_set_task_priority_for_current_thread.cc"
  "base/task/scoped_set_task_priority_for_current_thread.h"
  "base/task/sequence_manager/associated_thread_id.cc"
  "base/task/sequence_manager/associated_thread_id.h"
  "base/task/sequence_manager/atomic_flag_set.cc"
  "base/task/sequence_manager/atomic_flag_set.h"
  "base/task/sequence_manager/delayed_task_handle_delegate.cc"
  "base/task/sequence_manager/delayed_task_handle_delegate.h"
  "base/task/sequence_manager/enqueue_order.h"
  "base/task/sequence_manager/enqueue_order_generator.cc"
  "base/task/sequence_manager/enqueue_order_generator.h"
  "base/task/sequence_manager/fence.cc"
  "base/task/sequence_manager/fence.h"
  "base/task/sequence_manager/lazily_deallocated_deque.h"
  "base/task/sequence_manager/sequence_manager.cc"
  "base/task/sequence_manager/sequence_manager.h"
  "base/task/sequence_manager/sequence_manager_impl.cc"
  "base/task/sequence_manager/sequence_manager_impl.h"
  "base/task/sequence_manager/sequenced_task_source.cc"
  "base/task/sequence_manager/sequenced_task_source.h"
  "base/task/sequence_manager/task_order.cc"
  "base/task/sequence_manager/task_order.h"
  "base/task/sequence_manager/task_queue.cc"
  "base/task/sequence_manager/task_queue.h"
  "base/task/sequence_manager/task_queue_impl.cc"
  "base/task/sequence_manager/task_queue_impl.h"
  "base/task/sequence_manager/task_queue_selector.cc"
  "base/task/sequence_manager/task_queue_selector.h"
  "base/task/sequence_manager/task_time_observer.h"
  "base/task/sequence_manager/tasks.cc"
  "base/task/sequence_manager/tasks.h"
  "base/task/sequence_manager/thread_controller.cc"
  "base/task/sequence_manager/thread_controller.h"
  "base/task/sequence_manager/thread_controller_impl.cc"
  "base/task/sequence_manager/thread_controller_impl.h"
  "base/task/sequence_manager/thread_controller_power_monitor.cc"
  "base/task/sequence_manager/thread_controller_power_monitor.h"
  "base/task/sequence_manager/thread_controller_with_message_pump_impl.cc"
  "base/task/sequence_manager/thread_controller_with_message_pump_impl.h"
  "base/task/sequence_manager/time_domain.cc"
  "base/task/sequence_manager/time_domain.h"
  "base/task/sequence_manager/wake_up_queue.cc"
  "base/task/sequence_manager/wake_up_queue.h"
  "base/task/sequence_manager/work_deduplicator.cc"
  "base/task/sequence_manager/work_deduplicator.h"
  "base/task/sequence_manager/work_queue.cc"
  "base/task/sequence_manager/work_queue.h"
  "base/task/sequence_manager/work_queue_sets.cc"
  "base/task/sequence_manager/work_queue_sets.h"
  "base/task/sequence_manager/work_tracker.cc"
  "base/task/sequence_manager/work_tracker.h"
  "base/task/sequenced_task_runner.cc"
  "base/task/sequenced_task_runner.h"
  "base/task/sequenced_task_runner_helpers.h"
  "base/task/single_thread_task_executor.cc"
  "base/task/single_thread_task_executor.h"
  "base/task/single_thread_task_runner.cc"
  "base/task/single_thread_task_runner.h"
  "base/task/single_thread_task_runner_thread_mode.h"
  "base/task/task_features.cc"
  "base/task/task_features.h"
  "base/task/task_observer.h"
  "base/task/task_runner.cc"
  "base/task/task_runner.h"
  "base/task/task_traits.cc"
  "base/task/task_traits.h"
  "base/task/thread_pool.cc"
  "base/task/thread_pool.h"
  "base/task/thread_pool/delayed_priority_queue.cc"
  "base/task/thread_pool/delayed_priority_queue.h"
  "base/task/thread_pool/delayed_task_manager.cc"
  "base/task/thread_pool/delayed_task_manager.h"
  "base/task/thread_pool/environment_config.cc"
  "base/task/thread_pool/environment_config.h"
  "base/task/thread_pool/job_task_source.cc"
  "base/task/thread_pool/job_task_source.h"
  "base/task/thread_pool/pooled_parallel_task_runner.cc"
  "base/task/thread_pool/pooled_parallel_task_runner.h"
  "base/task/thread_pool/pooled_sequenced_task_runner.cc"
  "base/task/thread_pool/pooled_sequenced_task_runner.h"
  "base/task/thread_pool/pooled_single_thread_task_runner_manager.cc"
  "base/task/thread_pool/pooled_single_thread_task_runner_manager.h"
  "base/task/thread_pool/pooled_task_runner_delegate.cc"
  "base/task/thread_pool/pooled_task_runner_delegate.h"
  "base/task/thread_pool/priority_queue.cc"
  "base/task/thread_pool/priority_queue.h"
  "base/task/thread_pool/semaphore.h"
  "base/task/thread_pool/sequence.cc"
  "base/task/thread_pool/sequence.h"
  "base/task/thread_pool/service_thread.cc"
  "base/task/thread_pool/service_thread.h"
  "base/task/thread_pool/task.cc"
  "base/task/thread_pool/task.h"
  "base/task/thread_pool/task_source.cc"
  "base/task/thread_pool/task_source.h"
  "base/task/thread_pool/task_source_sort_key.cc"
  "base/task/thread_pool/task_source_sort_key.h"
  "base/task/thread_pool/task_tracker.cc"
  "base/task/thread_pool/task_tracker.h"
  "base/task/thread_pool/thread_group.cc"
  "base/task/thread_pool/thread_group.h"
  "base/task/thread_pool/thread_group_impl.cc"
  "base/task/thread_pool/thread_group_impl.h"
  "base/task/thread_pool/thread_group_semaphore.cc"
  "base/task/thread_pool/thread_group_semaphore.h"
  "base/task/thread_pool/thread_group_worker_delegate.cc"
  "base/task/thread_pool/thread_group_worker_delegate.h"
  "base/task/thread_pool/thread_pool_impl.cc"
  "base/task/thread_pool/thread_pool_impl.h"
  "base/task/thread_pool/thread_pool_instance.cc"
  "base/task/thread_pool/thread_pool_instance.h"
  "base/task/thread_pool/tracked_ref.h"
  "base/task/thread_pool/worker_thread.cc"
  "base/task/thread_pool/worker_thread.h"
  "base/task/thread_pool/worker_thread_observer.h"
  "base/task/thread_pool/worker_thread_semaphore.cc"
  "base/task/thread_pool/worker_thread_semaphore.h"
  "base/task/thread_pool/worker_thread_set.cc"
  "base/task/thread_pool/worker_thread_set.h"
  "base/task/thread_pool/worker_thread_waitable_event.cc"
  "base/task/thread_pool/worker_thread_waitable_event.h"
  "base/task/updateable_sequenced_task_runner.h"
  "base/template_util.h"
  "base/test/scoped_logging_settings.h"
  "base/test/spin_wait.h"
  "base/third_party/cityhash/city.cc"
  "base/third_party/cityhash/city.h"
  "base/third_party/cityhash_v103/src/city_v103.cc"
  "base/third_party/cityhash_v103/src/city_v103.h"
  "base/third_party/icu/icu_utf.h"
  "base/third_party/lss/linux_syscall_support.h"
  "base/third_party/nspr/prtime.cc"
  "base/third_party/nspr/prtime.h"
  "base/third_party/superfasthash/superfasthash.c"
  "base/thread_annotations.h"
  "base/threading/hang_watcher.cc"
  "base/threading/hang_watcher.h"
  "base/threading/platform_thread.cc"
  "base/threading/platform_thread.h"
  "base/threading/platform_thread_ref.cc"
  "base/threading/platform_thread_ref.h"
  "base/threading/post_task_and_reply_impl.cc"
  "base/threading/post_task_and_reply_impl.h"
  "base/threading/scoped_blocking_call.cc"
  "base/threading/scoped_blocking_call.h"
  "base/threading/scoped_blocking_call_internal.cc"
  "base/threading/scoped_blocking_call_internal.h"
  "base/threading/scoped_thread_priority.cc"
  "base/threading/scoped_thread_priority.h"
  "base/threading/sequence_bound.h"
  "base/threading/sequence_bound_internal.h"
  "base/threading/sequence_local_storage_map.cc"
  "base/threading/sequence_local_storage_map.h"
  "base/threading/sequence_local_storage_slot.cc"
  "base/threading/sequence_local_storage_slot.h"
  "base/threading/simple_thread.cc"
  "base/threading/simple_thread.h"
  "base/threading/thread.cc"
  "base/threading/thread.h"
  "base/threading/thread_checker.cc"
  "base/threading/thread_checker.h"
  "base/threading/thread_checker_impl.cc"
  "base/threading/thread_checker_impl.h"
  "base/threading/thread_collision_warner.cc"
  "base/threading/thread_collision_warner.h"
  "base/threading/thread_id_name_manager.cc"
  "base/threading/thread_id_name_manager.h"
  "base/threading/thread_local.h"
  "base/threading/thread_local_internal.h"
  "base/threading/thread_local_storage.cc"
  "base/threading/thread_local_storage.h"
  "base/threading/thread_restrictions.cc"
  "base/threading/thread_restrictions.h"
  "base/threading/threading_features.h"
  "base/threading/watchdog.cc"
  "base/threading/watchdog.h"
  "base/time/clock.cc"
  "base/time/clock.h"
  "base/time/default_clock.cc"
  "base/time/default_clock.h"
  "base/time/default_tick_clock.cc"
  "base/time/default_tick_clock.h"
  "base/time/tick_clock.cc"
  "base/time/tick_clock.h"
  "base/time/time.cc"
  "base/time/time.h"
  "base/time/time_delta_from_string.cc"
  "base/time/time_delta_from_string.h"
  "base/time/time_override.cc"
  "base/time/time_override.h"
  "base/timer/elapsed_timer.cc"
  "base/timer/elapsed_timer.h"
  "base/timer/hi_res_timer_manager.h"
  "base/timer/lap_timer.cc"
  "base/timer/lap_timer.h"
  "base/timer/timer.cc"
  "base/timer/timer.h"
  "base/timer/wall_clock_timer.cc"
  "base/timer/wall_clock_timer.h"
  "base/token.cc"
  "base/token.h"
  "base/trace_event/base_tracing.h"
  "base/trace_event/base_tracing_forward.h"
  "base/trace_event/common/trace_event_common.h"
  "base/trace_event/heap_profiler_allocation_context.cc"
  "base/trace_event/heap_profiler_allocation_context.h"
  "base/trace_event/heap_profiler_allocation_context_tracker.cc"
  "base/trace_event/heap_profiler_allocation_context_tracker.h"
  "base/trace_event/memory_allocator_dump_guid.cc"
  "base/trace_event/memory_allocator_dump_guid.h"
  "base/trace_event/named_trigger.cc"
  "base/trace_event/named_trigger.h"
  "base/traits_bag.h"
  "base/tuple.h"
  "base/types/always_false.h"
  "base/types/cxx23_to_underlying.h"
  "base/types/expected.h"
  "base/types/expected_internal.h"
  "base/types/expected_macros.h"
  "base/types/fixed_array.h"
  "base/types/id_type.h"
  "base/types/is_complete.h"
  "base/types/is_instantiation.h"
  "base/types/optional_ref.h"
  "base/types/optional_util.h"
  "base/types/pass_key.h"
  "base/types/strong_alias.h"
  "base/types/supports_ostream_operator.h"
  "base/types/to_address.h"
  "base/types/token_type.h"
  "base/types/variant_util.h"
  "base/unguessable_token.cc"
  "base/unguessable_token.h"
  "base/uuid.cc"
  "base/uuid.h"
  "base/value_iterators.cc"
  "base/value_iterators.h"
  "base/values.cc"
  "base/values.h"
  "base/version.cc"
  "base/version.h"
  "base/vlog.cc"
  "base/vlog.h"
)

list(APPEND COMPONENT_BASE_SOURCES_MAC_UNPROCESSED
  "build/build_config.h"
  "build/buildflag.h"
)


list(APPEND COMPONENT_BASE_SOURCES ${COMPONENT_BASE_SOURCES_UNPROCESSED})