/*	Pointer digunakan untuk management memory di bahasa c++.
Pointer akan selalu bertipe data integer
&(variable) adalah alamat dari variable
*(variable) adalah seuatu variable pointer yang bila di berikan nilai akan di masukan ke alamat pointer yaitu &(variable)
(masih belum paham)
*/


#include <iostream>
using namespace std;

void fungsi(int *b){
	cout << "address b " << b << endl;
	cout << " nilai b " << *b << endl;
}

int main(){
	int a = 5;

	cout << "address a " << &a << endl;
	cout << " nilai a " << a << endl;

	fungsi(&a);

	cin.get();
	return 0;
}
