//Ternary operator adalah syntax if else yang lain. Yang lebih sederhana dalam penulisannya.

#include <iostream>
#include <string>

using namespace std;

int main(){
	int a,b;
	string benar,salah;

	a = 3;
	b = 2;

	benar = "true lohh";
	salah = "maaf false";

	string nilainya = (a > b) ? benar : salah;
	cout << nilainya << endl;

	cin.get();
	return 0;
}
