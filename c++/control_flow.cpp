/*	Break dan continue adalah sebuah program dasar untuk control flow.
Yang artinya pada Break maka suatu proses akan di skip atau direm ke proses selanjutnya.
Continue akan melanjutkan atau naik lagi ke atas.

	Dari sini dapat di rangkum bahwa break akan menskip program didalam {} dan Continue mengulang kembali program yang ada di{}

Break dan Continue biasanya digunakan pada perulangan.
*/

#include <iostream>
using namespace std;

int main(){
	label_continue: //pindah kesini
	int i = 0;
	while(i <= 10){
		if(i== 5){
			//continue; melanjutkan ke iterasi berikutnya(iterasi saat ini di abaikan)
			//break; (langsung keluar dari loop) atau menghentikan loop ketika di eksekusi
		}
	}
	cout << "finish" << endl;
	goto label_continue; //Jika mencapai ini maka alur jalan program akan pindah ke
	cin.get();
	return 0;
}
