/*	Pada reference ini lebih bisa dilanar dan mungkin ini akan lebih cocok untuk ku gunakan sebagai management memory dari pada menggunakan pointer.
*/

#include <iostream>
using namespace std;

void fungsi(int *b){
	cout << "address b " << &b << endl;
	cout << "nilai b " << b << endl;
}

int main(){
	int a = 5;
	cout << "address a " << &a << endl;
	cout << "nilai a" << a << endl;

	fungsi(a)//memasukkan a ke reference seperti *b = a;

	cin.get();
	return 0;
}
