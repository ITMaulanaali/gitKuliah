//Array menggunakan urutan index. Yang artinya di mulai dari 0

#include <iostream>
using namespace std;

int main(){
	int nilai[5] = {0,1,2,3,4}; //untuk memberikan nilai tiap urutan index dari 0 ke 5 dengan nilai index 0=0 dan index4=4 
}

-------------------------------------------------------------------------
//Ketika melakukan looping pada array dan kemudian melewati index / indexnya habis maka yang di print nantinya ke console adalah justru alamat memorynya.
//Maka dari itu ada looping array yang ketika indexnya habis looping akan berhenti. Dalam hal ini semua nilai dalam array bisa muncul.

int main(){
	int arrayNilai[13] = {0,1,2,3,4,5,6,7,8,9,10,11,12};

	for(int nilai : arrayNilai){ //ini sama dengan nilai dimasuki value index dari arrayNilai setiap looping
		cout << nilai << endl;
	}
	cin.get();
	return 0;
}

//satuhal yang ingin ditekankan disini adalah sebagai dasar. Untuk memanipulasi sebuah data kita harus tahu alamatnya dahulu, kemudian kita rubah nilai didalamnya. Contohnya adalah reference &a berisi alamat a dan a sendiri menpunyai nilai yang disimpan di alamat a

---------------------------------------------------------------------------
/*	Array multidimensi adalah array yang miliki baris dan kolonm
	-baris(horizontal)
	-kolom(vertikal)

Meskipun begitu sebenarnya ini adalah istilah bahwa ketika ada pemanggilan nilai kolom array maka akan di taruh dibawah console.
Contoh syntaxnya:

int arrayMultiDimensi[baris][kolom] = {1,2,3,4};
diatas baris dan kolom mempresentasikan total indexnya.

sedangkan untuk pemanggilan tetap di panggilan nomer indexnya.
*/

int main(){
	int arrayMultiDimensi[2][2] = {1,2,3,4};
	cout << arrayMultiDimensi[0][0] << endl; //memanggil baris dengan index 0 = 1
	cout << arrayMultiDimensi[0][1] << endl; //memanggil baris dengan index 1 = 2
	cout << arrayMultiDimensi[1][0] << endl; //Karena index 1 pada baris adalah ujung atau sudah full 2 maka ini berarti memanggi kolom dengan index 0 = 3
	cout << arrayMultiDimensi[1][1] << endl; //memanggil kolom dengan index 1 = 4
	cin.get();
	return 0;
}

