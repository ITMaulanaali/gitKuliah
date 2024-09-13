/*Sebnarnya sama seperti while tidak beda jauh. Cuman dia akan mengeksekusi satu kali dulu atau do dulu kemudian while jika sesuai syarat.
contoh syntaxnya berikut:

do{
	aksi;
{while(syart);
*/


#include <iostream>
using namespace std;

int main(){
	int a = 1;

	do{
		cout << "looping sekali" << endl;
	}while(a < 0);

	cout << "selesai" <<endl;
	cin.get();
	return 0;
}
