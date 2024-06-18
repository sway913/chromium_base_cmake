#include <iostream>
#include <base/debug/stack_trace.h>
#include <chrono>
#include <thread>

#include <base\time\time.h>
#include <base\timer\timer.h>

void TestFoo()
{

}

void InvokeFoo( std::string parameter )
{
    std::cout << "Message passed in: " << parameter << std::endl;
    TestFoo();
}


int main()
{
    InvokeFoo( "aa" );
    return 0;
}
