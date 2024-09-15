/*Object yang pertama kali dibuat ini sangat penting dari pada sekedar memanggil object dengan methodnya.
Pembuatan object atau identifier serta inisialisasinya pada c++ ini akan mempengaruhi constructor nantinya*/

#include <iostream>
#include <string>
using namespace std;

class DenganConstructor{
    public:
        string data;

        DenganConstructor(const char* data){
            DenganConstructor::data = data;
        }

        void show(){
            cout << DenganConstructor::data << endl;

        }
};

class TanpaConstructor{
    public:
        string data;

        void show(){
            cout << "ini" << TanpaConstructor::data << endl;
        }

};

int main(){

    //1. Membuat object tanpa constructor
    TanpaConstructor object1;
    object1.data == "object 1";
    object1.show();

    //2. cara membuat object dengan constructor
    DenganConstructor object2 = DenganConstructor("object 2"); //data object akan ditaruh di stack memory
    object2.show();

    //3. cara lain membuat object dengan constructor
    DenganConstructor object3("object 3");
    object3.show();

    //4. cara membuat object pada heap memory(tumpukan memory). Semua yang diatas itu di stack memory
    DenganConstructor* object4 = new DenganConstructor("object 4"); //object akan ditaruh di memory heap. Data yang masuk ke memory heap tidak akan terhapus secara otomatis ketika statement berakhir atau selesai dijalankan sehingga harus di hapus manual.
    (*object4).show(); //dereference dulu objectnya

    object4->show(); //arrow operator artinya depanya pointer yang belakang member funtion. salah satu untuk menampoilkan data pointer
    string data = object4->data;
    cout << data << endl;

    //5. sama seperti dengan 4
    DenganConstructor* object5;
    object5 = new DenganConstructor("object5");
    object5->show();

    return 0;

}