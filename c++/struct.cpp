/*	Struct atau kepanjangan dari structure yaitu struktur. Maknanya adalah ketika suatu bagian dari c++
yang bisa membuat objek yang akan kita buat memiliki sebuah structure yand terdefinisikan.
Ini maknanya sebuah struct / structure yang kita buat akan digunakan oleh object untuk mendefinisikan structurenya. Di dalam struct dapat berisi berbagai type data.

Struct bisa juga disebut type data yang mana type data ini digunakan oleh object agar memiliki berbagai macam type data lain yang bisa digunakan.
Jika ada pertanyaan bagaimana agar suatu variable memiliki banyak type data? makan jawabannya adalah menggunakan struct atau type data struct.
*/

#include <iostream>
using namespace std;

int main(){
	struct mahasiswa{
		string nama;
		int nim;
		bool lulus;
	}

	mahasiswa maulana;
	maulana.nama = "Achmad Maulana Ali Hamzah";
	maulana.nim = 41241217;
	maulana.lulus = true;
}

//nesting struct dalam arti adalah structure bersarang contohnya seperti ini:

struct dosen{
	string matkul;
	string titel;
	mahasiswa murid; //mahasiswa dari struct mahasiswa

dosen buRani;
	buRani.matkul = "basis data"
	buRani.titel = "s2"
	buRani.murid = maulana; //masukkan objct nesting struct dari struct mahasiswa
}

//jadi disini shtruct di isi dengan type data structlain. Kemudian buat object untuk nesting struct
