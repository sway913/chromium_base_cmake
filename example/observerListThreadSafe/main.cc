#include <iostream>
#include <functional>

#include <base\observer_list_threadsafe.h>
#include <base\memory\scoped_refptr.h>

void Foo()
{
    std::cout << "Foo notified!\n";
}

int main()
{
    
    return 0;
}