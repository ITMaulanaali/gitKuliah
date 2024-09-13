/*	Break dan continue adalah sebuah program dasar untuk control flow.
Yang artinya pada Break maka suatu proses akan di skip atau direm ke proses selanjutnya.
Continue akan melanjutkan atau naik lagi ke atas.

	Dari sini dapat di rangkum bahwa break akan menskip program didalam {} dan Continue mengulang kembali program yang ada di{}

Break dan Continue biasanya digunakan pada perulangan.
*/

#include <iostream>
using namespace std;

int main(){
	int i = 0;
	while(i <= 10){
		if(i== 5){
			//continue;
			//break;
		}
	}
	cout << "finish" << endl;
	cin.get();
	return 0;
}
