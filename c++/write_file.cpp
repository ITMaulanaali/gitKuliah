/*Terdapat 3 mode penggunaan header fstream. di ofstream untuk mengeluarkan atau menulis data
	- ios::out = default, operasi output;
	- ios::app = menuliskan pada akhir baris;
	- ios::trunc = default, membuat file jika tidak ada dan jika ada maka di replace
	Menulis file dan membuat filebaru.txt
*/

#include <iostream>
#include <fstream>
#include <string>
using namespace std;

int main(){
	ofstream fileKu;

	fileKu.open("filebaru.txt", ios::app); //membuat file baru
	fileKu << "isi text baru"; //menulis text di filebaru
	fileKu.close(); //menutup file agar tersimpan di database atau komputer

	cin.get();
	return 0;
}

--------------------------------------------------------------------------
/*	Memasukan data filebaru.txt kedalam program dan menampilkanya ke console
*/

int main(){
	ifstream fileKu;
	string dataFile; //type data untuk menampilkan data file console

	fileKu.open("filebaru.txt"); //ini membuka filebaru.txt tapi sama juga dengan fileKu ini berisi semua data dari filebaru.txx yang berarti bisa di taruh pada cin di getline

	while(!fileKu.eof()){ //ini mengartikan bahwa jika isi dari fileKu belum sampai end of file maka looping...

		getline(fileKu,dataFile); //memasukan semua fileKu ke variable string dataFile
		cout << dataFile << endl; //melakukan print ke console hingga akhir dari file
	}

	cin.get();
	return 0;
}

-----------------------------------------------------------------------------
/*	Menulis dan membuat file binary
*/

int main(){
	fstream fileKu;
	int number = 12344;
	fileKu.open("fileBaru.bin", ios::out | ios::binary); //masih belum paham
	fileKu.write(reinterpret_cast<char*>($number),sizeof(number));//reinterpret ini merubah suatu data di file menjadi yang awalnya string ke char. Setelah itu masukkan alamat number ke pointer(ini yang Saya masih belum paham)

	fileKu.close();
	cin.get();
	return 0;
}


---------------------------------------------------------------------------
/*      Membaca file binary dari structure atau data binary bertipe data integer
*/

int main(){
        fstream fileKu;
        int hasil;
        fileKu.open("fileBaru.bin", ios::in | ios::binary); //masih belum paham
        fileKu.write(reinterpret_cast<char*>($hasil),sizeof(hasil));//reinter>

	cout << hasil << endl;

        fileKu.close();
        cin.get();
        return 0;
}

-------------------------------------------------------------------------
//Ketika ingin merubah dari file binary/ data binary ke bentu serupa itu harus mengetahui dulu struktur datanya apa. Dalam arti type data apa saja di situ. Karena semua type data akan memiliki bit yang sama. yaitu 1 dan 0
