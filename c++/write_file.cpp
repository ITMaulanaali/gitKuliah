/*Terdapat 3 mode penggunaan header fstream.
	- ios::out = default, operasi output;
	- ios::app = menuliskan pada akhir baris;
	- ios::trunc = default, membuat file jika tidak ada dan jika ada maka di replace
*/

#include <iostream>
#include <fstream>
using namespace std;

int main(){
	ofstream fileKu;

	fileKu.open("filebaru.txt", ios::app); //membuat file baru
	fileKu << "isi text baru"; //menulis text di filebaru
	fileKu.close(); //menutup file agar tersimpan di database atau komputer

	cin.get();
	return 0;
}
