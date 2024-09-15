#include <iostream>
#include <string>

using namespace std;
//
//class Mahasiswa{ //class Mahasiswa ini seperti memberikan type data class pada variable Mahasiswa
//    public:
//        Mahasiswa(){ //constructor atau pembangun bisa dibilang penyiapan awal. Ketika class Mahasiswa di eksekusi yang di eksekusi adalah method methodnya yang ada di publik modifiers. Nahh constructor ini dia membuat sebuah methode Mahasiswa(memanggil dirinya sendiri) untuk menjalankan statementnya lebih dulu sebelum method lain dijalankan yaitu program cout
//            cout << "ini adalah constructor" << endl;
//        }
//};
//
//int main(){
//
//    Mahasiswa mahasiswa1; //Ketika class Mahasiswa membuat object mahasiswa1 ini mengartikan bahwa mahasiswa 1 menggunakan class Mahasiswa kemudian program yang berada di bawah class Mahasiswa / bodynya / methodsnya atau scope dari class Mahasiswa akan di jalankan
//}


//contoh advance penggunaan constructor-------------------------------------------

class Mahasiswa{
    public:
        string nama;
        int nim;
        float ipk;

        Mahasiswa(string nama, int nim, float ipk){
            Mahasiswa::nama = nama; //pada tahap ini nilai nama /nim/ipk di variable tersebut hanya berisi di scope constructor saja sehingga perlu di assign ke variable nama di class Mahasiswa dengan menggunakan operator assignment seperti (this->nama) berarti memasukkan nama ke variable nama di class Masiswa public.
            Mahasiswa::nim = nim;
            Mahasiswa::ipk = ipk;
        }

};

int main(){
    Mahasiswa/*sih class Mahasiswa ini hanya mempresentasikan bahwa object lana akan dijalankan dengan method methode yang ada di class Mahasiswa. Sehingga silana ini bernilai kosong dan tidak menjalankan method /fungsi yang menggunakan input dari fungsi atau method Mahasiswa*/ lana = Mahasiswa("Achmad Maulana Ali Hamzah", 41241217, 3.9); //Kenapa syntaxnya begitu, Aku jelaskan. Jadi untuk menjalankan method atau mirip seperti fungsi itu kita harus panggil fungsinya dulu yaitu Mahasiswa(input,input,input) Nahh meskipun constructor(method atau function) berjalan pertama kali secara otomatis tapi ini tetap harus di masukkan input secara manual. "Itulah mengapa constructor di chat gpt di jelaskan untuk menjalankan program statis". Nahh kemudian bagaimana agar bisa memasukan input ke contructor adalah dengan menjalankan method constructor secara manual menggunakan object lana yang akan di panggil ke dalam scope class Mahasiswa ketika di identifier.
    cout << lana.nama << lana.nim << lana.ipk << endl;

    //object lana berisi Mahasiswa(input,input,input) -> Mahasiswa(input,input,input) masuk ke class Mahasiswa -> constructor secara otomatis di jalankan dan proses yang dijalnkan ini selalu berindikator atau berkorelasi dengan object lana atau Mahasiswa(input,input,input). Dengan begitu constructor akan mengambil input dari object tersebut dan menjalankan statementnya

    //object lana di assignted dengan function Mahasiswa(input,input,input)
    //-> di inisialisasi sehingga object lana = Mahasiswa(input,input,input) eksesku / masuk ke class Mahasiswa sebagai parameter.
    //-> constuctor secara otomatis berjalan duluan sehingga lana = Mahasiswa(input,input,input) mengassignt inputnya ke constructor
    //-> statement constructor di jalankan berupa mengassignt parameter nama,nim,ipk dari construster ke variable nama,nim,ipk dari class Mahasiswa. Dengan begitu public variable akan memyimpan nilai parameter dari constructor
    //-> kemudia pada int main di cout lah variable nama,nim dan ipk itu di class Mahasiswa itu dengan object lana yaitu lana.nama

    /*pada tahap ini object lana akan tetap bervalue Mahasiswa(input,input,input)
    */
}