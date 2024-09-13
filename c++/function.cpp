/*	Untuk contoh functionnya sebenarnya sama saja dan ini masih procedural
*/

#include <iostream>
using namespace std;

int kuadrat(int x){ //argumen harus selalu memiliki tipe data
	int hasilKuadrat = x * x;
	return hasilKuadrat;
}

int main(){
	int input, hasil;
	cout << "nilai kuadrat dari: ";
	cin >> input;

	hasil = kuadrat(input);
	cout << hasil << endl;
	cin.get();
	return 0;
}
