/*Komparasi sepertinya namanya adalah membandingkan.
	yaitu program c++ untuk membandingkan antara 2 atau lebih sesuatu(tidak hanya bilangan).
	komparasi ini biasanya digunakan bersamaan dengan if else. Ingat komparasi berbeda dengan operator logika.
*/

//contoh operatornya ada:

== sebanding
!= tidak sebanding / bukan sebanding
< kurang dari
> lebih dari
<= kurang dari atau sama dengan
>= lebih dari atau sama dengan

#include <iostream>

int main(){

	int a = 2;
	int b = 2;

	bool hasil1, hasil2; //membuat 2 variable dengan type data sama menggunakan koma

	//sebanding
	hasil1 = (a == b);
	cout << hasil1 << endl;
	cin.get();
	return 0;
}
