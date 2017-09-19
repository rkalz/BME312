#include <iostream>
using namespace std;

int main() {

	double d;
	int i;
	
	cout << "enter d: ";
	cin >> d;


	if (d>0) {

		i = int(d+0.5);             // truncates double d to int i

	} else if (d<=0) {

		i = int(d-0.5);
	
	}

	cout << "i = " << i << endl;


	return 0;

}
