/*Sebenarnya penggunaan either namespace ataupun this itu sama fungsinya yaitu untuk pointer ke alamat class tersebut.
Namun ada hal-hal atau standar yang mungkin memang kita harus taruh itu ditempat yang tepat agar dapat dibaca rapi*/

#include <iostream>
#include <string>

using namespace std;

class Player{
    public:
        string namaPemain;
        int skorPemain;

        Player(const char* namaPemain, int skorPemain){ //constructor
            this->namaPemain = namaPemain;
            this->skorPemain = skorPemain;
        }

        ~Player(){ //distructor
            this->namaPemain = "kucing";
            this->skorPemain = 10;
            cout << this->namaPemain << endl;
            cout << this->skorPemain << endl;
        }

        void output(); //prototype
};

int main(){
    Player* lana/*pointer lana masuk ke stack memory*/ = new/*memasukkan objectnya lana saja ke heap memory*/ Player("Achmad Maulana Ali Hamzah ", 90); //data di simpan ke object lana yang berada di heap memory
    lana->output();
    delete lana; //ketika tidak di kasih delete maka nilai heap akan terus di simpan di namaPemain dan skorPemain tanpa bisa di ganti dengan nilai lain(permanent)
}

void Player::output(){ //artinya scope atau stement ini sudah bagian dari class Player atau kita dalam Player
    cout << Player::namaPemain << endl; //Jika di luar dari scope class nya maka gunakan nama classnya selalu(begitu kerapihanya)
    cout << Player::skorPemain << endl;
}

//distructor akan di jalankan ketika semua program dari body atau stetement selesai atau tidak ada lagi memory yang digunakan oleh class. Tapi ketika itu terjadi maka kita tidak bisa memanipulasi apapun pada distructor