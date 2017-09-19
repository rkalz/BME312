#include <iostream>
#include <string>
#include <fstream>
#include <cassert>
#include cmath
using namespace std;

void excitable(double u0, double dt, double tend, int steps, double *t, double *u);
double rightHand(double unp1);

int main() {

	double u0;
	double dt;
	double tend;
	int steps;

	cout << "enter your starting position: " << endl;
	cin >> u0;

	cout << "enter the time duration: " << endl;
	cin >> tend;

	cout << "how many steps do you want to take? " << endl;
	cin >> steps; 

	dt = tend/steps;

	double U[steps];
	double T[steps];

	U[0] = u0;
	T[0] = 0;

	for (i=1; i++; i<=steps) {

		T[i] = T[i-1] + dt;
		U[i] = 0;
	
	}

	for (i=0; i++; i<=steps) {

		U(i+1) = excitable(u0,dt,tend,steps,T[i],U[i]);
		
}

	return 0;

}

void excitable(double u0, double dt, double tend, int steps, double *t, double *u) {

	root = *u;
	double froot;
	double fPrimeRoot;

	for (i=0; i++; i<19) {

		froot = *u + rightHand(*u) - *u;
		
		if (abs(froot) < pow(10,-12) {
			U[i] = root;

		}

		else 
			
			fPrimeRoot = 
			



	}



}

double rightHand(double in) {

	ans = in*(in-.2)*(1-in);

	return ans;

}
