/* Yang dimaksud method adalah fungsi yang nempel di classnya*/

#include <iostream>
#include <string>

using namespace std;

class Mahasiswa{ //class
    public: //modifier
        string nama; //variable
        double ipk; //variable

        Mahasiswa(string nama, double ipk){ //constructor
            Mahasiswa::nama = nama; //statement
            Mahasiswa::ipk = ipk; //statement
        }//body

        //method tanpa parameter dan tapa return
        void tampilkanData(){

            cout << nama << endl;
            cout << ipk << endl;
        }

        //method dengan parameter dan tanpa return
        void ubahNama(const char* nama){ //argumen dengan type data tersebut berarti string tapi lebih cepat. Karena string menggunakan char array yang lebih lambat

            Mahasiswa::nama = nama;
        }

        //method tanpa parameter dan dengan return
        double getIpk(){
            return Mahasiswa::ipk;
        }

        //method dengan parameter dan dengan return
        double katrolIpk(const double &tambahNilai){//jika ingin menggunakan reference & sebagai alamat untuk efisiensi memory maka jangan lupa untuk pakai "const" karena &(reference) alamatnya akan tetap berubah. Bisa juga menautkan ke variable lain agar const contoh: &y = a maka y akan selau constan alamat dari a(&a)
            return Mahasiswa::ipk + tambahNilai;
        }
};

int main(){

    Mahasiswa lana = Mahasiswa("ucup", 3.9);
    lana.tampilkanData();

    Mahasiswa ucup = Mahasiswa("lana", 3.7);
    ucup.tampilkanData();

    ucup.ubahNama("otong"); //ucup ubah nama ini tidak perlu di masukkan nilai ucup = ubahNama("input") karena pada dasarnya ucup.ubahNama() akan memanggil method ubah nama di class mahasiswa. Sebenarnya ini bisa digunakan secara manual juga untuk diarahkan ke method Mahasiswa secara manual bukanya menggunakan constructor.
    ucup.tampilkanData();

    cout << ucup.getIpk() << endl;
    cout << ucup.katrolIpk(-1) << endl;
    return 0;
}