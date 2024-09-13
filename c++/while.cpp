/*	Penggunaan while loop adalah ada syarat dan ada aksi
syntaxnya seperti ini:

while(syarat){
	aksi;
}
while itu akan membaca jika suatu syarat itu bernilai true maka akan menjalankan aksi.
Namun jika syarat while ini adalah false maka akan dilewati. Ini sama seperti if, else, switch case dan while akan dijalankan statement atau aksinya jika bernilai true
*/


#include <iostream>
using namespace std;

int main(){
	int a = 5;
	while(a < 10){
		cout << "berulang" << endl;
		a++;
	}
	cin.get();
	return 0;
}
