#include <iostream>
using namespace std;

int main() {

	int A[10] = {1,2,3,4,5,6,7,8,9,0};

	int n;
        for (n = 0; n < 10; n++) {     // if you look at areas outside of the array, this returns adjacent values in memory

		cout << A[n] << endl;          // cout << A returns the memory location of A

	}

	return 0;
}
