#include <iostream>
using namespace std;

double sum(double,double); // Prototype fuction. Tells compiler that there is a function sum that takes two doubles and outputs a double


int main() {

	double X,Y;
	double Z;

	cout << "Enter X: ";
	cin >> X;

	cout << "Enter Y: ";
	cin >> Y;

	Z = sum(X,Y);
	
	cout << "The sum of " << X << " and the sum of " << Y << " is " << Z << endl;

	return 0;

}

double sum(double a, double b) {

	double c;

	c = a+b;

	return c;

}
