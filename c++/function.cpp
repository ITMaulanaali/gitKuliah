/*	Untuk contoh functionnya sebenarnya sama saja dan ini masih procedural

	Void adalah tipe data tapi kosong

        Jika pada int main dsb menggunakan return karena bisa mengembalikan nil>
<pun atau tipe data kosong.

*/

#include <iostream>
using namespace std;

int kuadrat(int x){ //argumen harus selalu memiliki tipe data
	int hasilKuadrat = x * x;
	return hasilKuadrat;
}

void tampilkan(){
	cout << "void lohh" << endl;
}

int main(){
	int input, hasil;
	cout << "nilai kuadrat dari: ";
	cin >> input;

	hasil = kuadrat(input);
	cout << hasil << endl;

	tampilkan();
	cin.get();
	return 0;
}
