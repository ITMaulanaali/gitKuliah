#include <iostream>
#include <string>

using namespace std;

//int kulit;
//kulit = 34; //class sama seperti ini jadi scope class ada working area yang kosong baik di bawah public scope atau private scope

class Mahasiswa{
    public: //dapat diakses siapaun yang menggunakan object class
        string nama;

        void tampilkanDariPrivate(){
            this->nama = nim;
            cout << this->nama << endl; //ini akan memunculkan nilai yang diambil dari private yaitu nimku
        }

    private: //hanya dapat diakses oleh si scope class itu sendiri
        string nim = "nimku"; //mengassignt di working area ksong atau hampa
};

int main(){

    Mahasiswa lana;
    lana.tampilkanDariPrivate();
}