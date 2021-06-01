#include <iostream>

using namespace std;

#include "functions.h"

int main(){
    int number = 6;

    print_hello();

    cout << "The factorial of " << number;
    cout << " equals " << factorial(number) << endl;

    return 0;
}
