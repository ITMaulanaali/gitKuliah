/*If else dalam bahasa indonesia adalah jika salah yaitu suatu bagian program c++ untuk melakukan suatu pernyataan atau statement sesuai dengan kondisi booleanya.
	If membaca kondisi apabila true atau bernilai 1 maka akan menjalankan statementnya.
	Dan else menjalankan statementnya apabila if bernilai 0 atau false.

Contoh syntaxnya adalah:

if(kondisi){
	statement
}else{
	statement milik else
}
*/

#include <iostream>
using namespace std;

int main(){

	short a = 2;
	short b = 3;

	if(a == b){ // jika operator komparasi diganti dengan != maka statement else yang akan digunakan.
		cout << "statement milik if muncul" << endl;
	}else{
		cout << "statement milik else muncul" << endl;
	}
}
