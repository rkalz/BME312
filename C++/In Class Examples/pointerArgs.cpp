#include <iostream>
using namespace std;

void aFunction(int *a, int *b, double *c, const int L);

int main() {

	int X = 4;
	int Y = 5;
	int n;

	const int L = 10;
	double A[L];

	aFunction(&X,&Y,A,L);

	cout << X << " " << Y << endl;

	for (n=0; n<L; n++) {

		cout << A[n] << endl;

	}

	return 0;

}

void aFunction(int *a, int *b, double *c, const int L) {

	int n;
	
	*a = *a + 1;
	*b = *b + 1;

	for (n=0; n<L; n++) {

		c[n] = 12*n;

	}

}
