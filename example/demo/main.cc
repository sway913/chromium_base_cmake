#include "base/at_exit.h"
#include "base/message_loop/message_pump.h"
#include "base/functional/bind.h"
#include "base/logging.h"
#include "base/memory/raw_ptr.h"
#include "base/message_loop/message_pump_for_io.h"
#include "base/message_loop/message_pump_for_ui.h"
#include "base/message_loop/message_pump_type.h"
#include "base/run_loop.h"
#include "base/task/single_thread_task_executor.h"
#include "base/test/bind.h"
#include "base/test/test_timeouts.h"
#include "base/threading/thread.h"
#include <type_traits>



int main(int argc, char** argv) {
	std::unique_ptr<base::MessagePump> message_pump_;
	return 0;
}