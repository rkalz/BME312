#include <iostream>
using namespace std;

struct twoIntsAndAFloat {

	int a;
	int b;
	float f;

};


twoIntsAndAFloat blat();

int main() {

	twoIntsAndAFloat Q;

	Q = blat();

	cout << Q.a << " " << Q.b << " " << Q.f << endl;

	return 0;
	
}

twoIntsAndAFloat blat() {

	twoIntsAndAFloat X;

	X.a = 3;
	X.b = 6;
	X.f = 11.4;

	return X;


}
