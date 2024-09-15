/* terdapat 3 modifiers. Ingat! apapun modifiersnya ia tidak akan bisa mengeluarkan program itu ke publik working area. Itulah mengapat perlu di identifier dulu dengan type data / class Mahasiswa untuk object classnya
    -public: ini mengartikan bahwa semua program yang ada di scope ini bisa diakses oleh semua function atau type data atau apapun itu di scope class Mahasiswa seluruhnya.
    -private: semua program yang berada di scope ini tidak akan bisa di akses atau dikenali bahkan di ambil oleh function atau pemanggilan apapun di scope class Mahasiswa
    -protected: semua program di scope ini sama seperti private tapi bisa di wariskan(inheritance) atau di bagikan ke beberapa function atau program lain dibawah scope class Mahasiswa saja
*/

#include <iostream>
#include <string>

using namespace std;

class Mahasiswa{ //sebuah class ada baiknya dan memamng standarnya huruf depannya harus besar untuk membedakan apakah itu function atau class
    public:
        string nama;
};

int main(){
    
    Mahasiswa data1;
    data1.nama = "maulana";
    cout << data1.nama << endl;
    return 0;
}