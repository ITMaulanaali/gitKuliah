/*	Operator logika adalah bagian dari c++ untuk membuat logika true atau false pada kondisi yang ada.
Apabila kedua nilai itu benar maka hasilnya true atau 1 maka itu adalah and
Apabila salah satu nilai itu benar dan satunya false nilainya atau hasil 1 atau true maka itu or
Sebenarnya ada banyak logika dalam elektronika namun semua itu adalah gabungan dari gerbang logika sederhana.
*/

//Contoh operatornya adalah:

&& atau and //gerbang logika and
|| atau or //gerbang logika or


#include <iostream>

int main(){
	int a = 3;
	int b = 2;
	bool hasil;

	cout << "untuk and \n";
	hasil << (a == 3) && (b == 2);
	cout << hasil << endl;
	cin.get();
	return 0;
}
