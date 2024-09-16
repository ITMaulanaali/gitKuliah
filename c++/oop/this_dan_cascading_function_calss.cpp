//Saya masih belum atau kurang paham terkait pointer dan reference. Namun untuk kasus ini ada sedikit pemahaman yaitu:
//pada class ketika object itu di definisikan dengan pointer (pointer berada di stack memory dan object data disimpan dalam heap memory) maka untuk memanggil datanya di heap memory harus menggunakan pointer seperti this->
//pointer merujuk pada data yang disimpan di heap untuk ditampilkan.

//Ketika ingin mengambil data di stack kita bisa memanggilnya tanpa pointer, sehingga pemanggilannya bisa seperti ini: (di int main) object.method
//Nahh di class kita merubah(dereference) pointer this-> yang mengambil penyimpanan di heap menjadi (*this). Ini tetap mengambil memory di heap tapi dengan bentuk dereference bukan pointer lagi. sehingga pemanggilanya menjadi (*this).method/member data
//Nahh karena menggunakan titik itu yang pemanggilan dereferencenya di return ke method sehingga semua method akan direference dan bisa menggunakan titik untuk pemanggilan method lain yang direferece juga. method.method.method.method

#include <iostream>
#include <string>

using namespace std;

class NamaPlayer{
    private:
        string namaDepan;
        string namaTengah;
        string namaBelakang;

    public:
        NamaPlayer& namaDepanku(const char* namaDepan){

            (*this).namaDepan = namaDepan; //pemberian(*this) ini mengdereference sebuah pointer sehingga ter dereference
            return *this; //ketika ini return atau assignt ke alamat namaDepanku. ini sama saja dengan pointer ini jadi dereference juga kurang lebih begitu
        }

        NamaPlayer& namaTengahKu(const char* namaTengah){

            (*this).namaTengah = namaTengah;
            return *this;
        }

        NamaPlayer& namaBelakangku(const char* namaBelakang){

            (*this).namaBelakang = namaBelakang;
            return *this;
        }

        NamaPlayer& tampilkan(){
            cout << (*this).namaDepan << endl;
            cout << (*this).namaTengah << endl;
            cout << (*this).namaBelakang << endl;
            return *this;
        }
};

int main(){

    NamaPlayer* lana = new NamaPlayer();
    lana->namaDepanku("maulana").namaTengahKu("ali").namaBelakangku("hamzah").tampilkan(); //Dengan begini semua bisa dipanggil hanya dalam satu baris saja menggunakan titik. Karena method method tersebut sudah menjadi dereference
}