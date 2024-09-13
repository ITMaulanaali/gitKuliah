/*	Pada overloading(menimpa) atau dalam kata lain melebihi muatan lebih dari batas.
Ini adalah istilah dimana ketika membuat fungsi yang sama namun dengan argumen yang berbeda. Baik perbedaan banyaknya argumen maupun type data argumen.
*/

#include <iostream>
using namespace std;

//basic function
int luasKotak(int panjang, int lebar){
	int luas = panjang * lebar;
	return luas;
}

//overloading function
int luasKotak(int sisi){
	int luas = sisi * sisi;
	return luas;
}

double luasKotak(double sisi){
	return sisi * sisi;
}

int main(){
	cout << "luas kotak 2.5" << luasKotak(2.5) << endl; //ini akan menampilkan hasil dari fuction terakhir yaitu type data double
	cin.get();
	return 0;
}

//Overloading fuction akan mencoba mencari sendiri mana fuction yang harus digunakan sesuai dengan argumen yang diberikan dan fuction yang ada.
