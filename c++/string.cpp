/*	Penggunaan string pada c++ orisinil sangat berbeda. Pada c++ kita harus memasukkan library string untuk menggunakan string.
Synstax penamaan string juga bisa berbeda.
*/


#include <iostream>
#include <string>
using namespace std;

int main(){
	string kata = "kucing";//bisa seperti ini
	string kata("kucingku");//bisa juga seperti ini
	cout << kata << endl;
}

------------------------------------------------------------------
//Komparasi String. Contoh syntax
 string kata1 = "ikan";

if(kata1 == "ikan"){
	cout << "benar sekali" << endl;

}else{
	cout << "salah kaka"
}

//perbandingan kumpulan karakter hanya bisa dilakukan dengan tipe data string

-----------------------------------------------------------------------
// Akses Substring adalah mengelola atau memiliki akses string tapi di bagian bagain dalam string tersebut
// Contoh syntax untuk mengambil kata ditengah stringL:

string kalimat1 = "aku makan nasi";

cout << kalimat1.substr(/*indexpertama*/5,/*panjangkatayangdiambil*/5); hasilnya "makan"

------------------------------------------------------------------------
//mencari suatu kata dalam string. Contoh syntaxnya:

string kalimat1 = "aku makan nasi";

cout << kalimat1.find("makan");

-------------------------------------------------------------------------
//Merubah nilai antar 2 variable string. Contoh syntaxnya:

string kalimat1 = "aku makan nasi";
string kalimat2 = "kamu makan ikan";

cout << kalimat1.swap(kalimat2) << endl;

----------------------------------------------------------
//Mengreplace salah satu kata dari substring. Contoh syntaxnya:

string kalimat1 = "aku makan nasi";

cout << kalimat1.replace(11,4, "telur"); //ini akan merubah kalimat1 menjadi "aku makan telur"

-----------------------------------------------------------
//insert string. Contoh syntaxnya adalah. Dimana ini akan menambah substring di string.

string kalimat1 = "aku makan telur";

cout << kalimat1.insert(15,"dadar";

------------------------------------------------------------
//memasukkan kalimat string yang di input ke variable kalimatInput. Contoh syntaxnya:

string kalimatInput;

getline(cin,kalimatInput);
cout << kalimatInput << endl;
