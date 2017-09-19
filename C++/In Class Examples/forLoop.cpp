#include <iostream>
using namespace std;

int main() {

	short int n = 0;               // when n reaches max int value, n+1 loops around to min int value

	while (++n) {                  // n++ increments AFTER logic check, ++n increments BEFORE logic check

		cout << n << endl;

	}

	return 0;

}
