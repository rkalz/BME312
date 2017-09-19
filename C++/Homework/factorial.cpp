#include <iostream>
#include <cstdlib>
using namespace std;

double factorial(int input);

int main() {

	int in;
	double out;
	
	cout << "Welcome to factorial generator! Please input a positive integer: ";
	cin >> in;

	if (in<0) {

		cout << "Negative input detected, program exiting.";
		exit(1);

	}

	out = factorial(in);
	cout << in << "! is equal to " << out << "." << endl;


	return 0;

}

double factorial(int input) {

	double ans;
	int n;

	ans = 1;
	n = 1;

	while (n<=input) {

		ans = ans*n;
		n++;

	}

	

	return ans;

}
