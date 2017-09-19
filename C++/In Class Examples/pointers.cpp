#include <iostream>
using namespace std;

int main() {

	int a = 4;
	
	int *pa;

	pa = &a;

	cout << "a = " << a << endl;

	cout << "pa = " << pa << endl;

	cout << "*pa = " << *pa << endl;

	cout << "&a = " << &a << endl;

	cout << "++*pa = " << ++*pa << endl;

	cout << "a = " << a << endl;

	cout << "pa = " << pa << endl;

	cout << "*pa = " << *pa << endl;

	cout << "&a = " << &a << endl;

	return 0;

}
