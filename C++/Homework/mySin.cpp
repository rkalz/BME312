#include <iostream>
#include <cmath>
using namespace std;

double mySin(double x);
double factorial(int input);

int main() {

	double in;
	double out;
	double outReal;

	cout << "Radian Sine Calculator. Please enter an angle value in radians: " << endl;
	cin >> in;

	out = mySin(in);
	outReal = sin(in);

	cout << "The series calculated answer is: " << out << " and the actual answer is: " << outReal << "." << endl;

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

double mySin(double x){

	int n;
	double curVal;
	double out;

	n = 0;
	curVal = 1;
	out = 0;

	while (abs(curVal) > pow(10,-12)) {

		curVal = pow(-1,n);
		curVal = curVal*pow(x,(2*n)+1);
		curVal = curVal/factorial((2*n)+1);

		out = out + curVal;
		n++;

	}

	return out;
}


