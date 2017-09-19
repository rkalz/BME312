#include <iostream>
using namespace std;

int main() {
	
	int a = 4;

	int *pa;                   // pointer a points to an int;
	double *pA;

	const int L = 10;
	double A[L];
	int n;

	pa = &a;                   // makes pa a pointer of a "&a is the address"

	cout << *pa << endl;       // * gives the thing pa is pointed to

	(*pa)++;                   // increments the thing pa points to

	cout << a << endl; 

	cout << pa << endl;        // gives memory location of pa

	pa++;                      // adds to the memory location of pa, this is bad

	cout << pa << endl;        // pa points to integer, integer is 4 bytes

	cout << A << " " << &(A[0]) << endl;

	pA = A;

	for (n=0; n<L; n++) {

		*pA = 10*n;
		pA++;

		A[n] = 10*n;


	}
	
	for (n=0; n<L; n++) {


		cout << A[n] << endl;

	}
	return 0;

}
