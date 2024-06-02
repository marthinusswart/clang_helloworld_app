#include <iostream>
#include <string>
#include "helloworld_lib.h"

int main()
{
  std::cout << "Going to call shared lib " << std::endl;
  printHelloWorld();
  return 0;
}
