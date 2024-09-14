//Comma operator adalah syntax yang membantu penulisan pemrograman lebih sederhana menjadi satu baris saja dengan simbol,

#include <iostream>
using namespace std;

int main(){
	int a,b,c;

	a = (b=4, c=1, (b+c)); //bisa ditambah lagi tapi
	cout << a << endl; //tidak bisa di tambah ke atas karena logikan b+c harus di eksekusi di akhir untuk mengreturn nilai ke a

	cin.get();
	return 0;
}
