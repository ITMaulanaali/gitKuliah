/*	Rekursive function secara sederhana adalah cara mengulang sebuah function dengan batas berhenti seperti for yang disebut finit rekursif.
Contoh sederhananya adalah program untuk 2 pangkat 3 menggunakan rekursive.

Terdapat 3 orang yang berjejer vertikal dengan simbol -
							-
							  -

nah tiap orang katakan mempunyai 2 apel, orang paling atas tidak tahu berapa apel yang di bawa oleh orang yang dibawa karena di sudah di bungkus.
Saat memulai rekursive fuction, itu ibarat orang pertama paling atas memberikan 2 apel untuk dikali dengan bungkusnya. Karena tidak tahu berapa isi bungkunsnya makan orang kedua memberikan apelnya ke orang ketiga untuk dikali dengan apelnya.
Karena orang ketiga tidak tahu berapa apelnya maka ada finit rekursive.
Yaitu jika sudah sampai orang ketiga maka bungkus bisa dibuka sendiri setelah itu dikali dengan milik orang diatas dan di kali terus hingga keatas.
*/

#include <iostream>
using namespace std;

int pangkatRekursif(int a, int b){
	if(b <= 1){
		cout << "akhir dari rekursif\n";
		return a;
	}else{
		cout << "rekursif\n";
		return a * pangkatRekursif(a,(b-1));
	}
}


int main(){
	cout << pangkatRekursif(2,3) << endl;
}
