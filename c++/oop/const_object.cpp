//Const atau constanta membuat suatu data tidak dapat dirubah atau dimanipulasi namun tetap dapat di panggil.
//Pada const object, karena object itu semacam variable dari class maka memberikan const pada object akan membuat semua method ataupun member data tidak dapat dipanggil/akses bahkan di manipulansi
//Namun tetap dapat dipanggil saja jika pada method tersebut di berikan label const sebelum buka kurawal statement.

#include <iostream>
#include <string>

using namespace std;

class TesKonst{
    public:
        string nama;

        TesKonst(const char* nama){

            this->nama = nama;
        }

        void show() const {

            cout << this->nama << endl;
        }
};

int main(){

    const TesKonst beku = TesKonst("membeku");
    //beku.nama = "tidakbeku"; //kita tidak bisa mengganti apapun di dalam object atau class karena sudah jadi const
    beku.show(); //namun kita tetap bisa untuk mengambil atau getter atau read only saja method void show()
}

//Entah kenapa tapi const ini tidak berlaku jika seandainya inisialisasi object tersebut menggunakan pointer.
//Argument saat ini mungkin karena const nya terkena ke pointer yang tersimpan di memory stack. Sedangkant data apapun itu yang di masukkan ke object tersimpan di heap memory