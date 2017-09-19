#include <iostream>
using namespace std;

int main() {

	int n;

	for (n = 0; n < 10; n++) {

		if (n == 4) {                              // if (n=4) will cause infinte loop, as n will constantly be redefined as 4
			cout << "n is 4" << endl;
		} else {
			cout << "n is not 4" << endl;
		}

	}
	cout << endl;


	return 0;

}
