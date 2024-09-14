/*	Union  meiliki makna penyatuan atau perpaduan. maksudnya adalah dengan syntax dan penggunaanya yang sama seperti struc.
Union bisa memiliki komponen atau type data yang berbeda juga di dalamnya.
Namun semua variable dengan type data berbeda tersebut menggunakan block memory yang sama.

	Seperti yang kita tahu apapun berntuk type datanya itu sebenarnya data tersebut di simpan kedalam memory dengan rentang atau range byte.
Nah apapun jenis datanya yang disimpan akan selalu tersimpan dalam bentuk biner yang mengisi memory. Union yang memiliki banyak komponen atau type data berbeda itu menggunakan block memory yang sama. Sehingga perubahan bit pada satu type data juga akan merubah bit pada type data atau variable atau komponen lainya di dalam body union dengan bit yang sama semua.
Contoh:

char b = 'b'; disimpan dengan bit 01100010
int a = 98; disimpan denga bit yang sama 01100010
bool c = true; disimpan dengan bit 11111111. karena 01100010 pada mesin di indikasikan seluruhnya 1 pada boolean maka hasilnya akan true juga.
*/

#include <iostream>
using namespace std;

int main(){
	union test{
		char b;
		int a;
		bool c;
	};

	test memoryBit;

	memoryBit.b = 'c';
	memoryBit.a;
	memoryBit.c;

	cout << "hasil dari bit c" << endl;
	cout << memoryBit.b << endl;
	cout << memoryBit.a << endl;
	cout << memoryBit.c << endl;
	// maka ini menampilkan hasil dengan bit yang sama seperti penyimpanan karakter c.

	memoryBit.b = 'b';
	cout << "hasil dari bit b" << endl;
        cout << memoryBit.b << endl;
        cout << memoryBit.a << endl;
        cout << memoryBit.c << endl;
	//ini akan menampilkan hasil semua type data dengan nilai bit sama seperti bitnya b.

}
