/*  Biasanya ketika membuat program oop itu karena complexitas programnya yang tinggi. Sehingga banyak sekali program yang ditulis.
Nahh muncullah oop sebagai class atau menaruh potongan potongan khsusus program itu kedalamnya. 
Tentu ketika banyak program yang ditulis itu akan memenuhi working area kita di satu file maka dibuatlah program di banyak file(multi file) dengan fokus tiap file berisi program yang berbeda dengan class.
Cara menaruh program di class ini ke another file ada banyak cara.
Bisa menaruh semua atau satu class atau hanya penjabaranya(prototype dari class) dan selalu di ikuti dengan header file*/

//ketika program di pecah ke beberapa file. Maka harus perhatikan dependensinya, karena tiap file tidak terikat dendan dependeci lain atau dalam arti file header(preprocessing directive)
//Setelah program selesai maka harus dicompile semuanya menjadi 1 file executable dari linking. Ini melibatkan 3 proses yaitu preprocessing directive, compile beberapa object file tadi, kemudian di linking untuk menjadi file executable.

#include <iostream>
#include <string>

using namespace std;

//----------------------------------------------------------------------------------------
//simulasi class prototype ini terpisah dengan penjabaranya di file lain
//file kelas_player.h

//ifndef __Player //digunakan jika sudah ada class Player maka akan dihapus dan di define ulang sehingga tidak terinclude 2 kali atau lebih
//define __Player
//#include <string>

class Player{
    public:
        string nama;

        Player(const char*); //costructor dalam bentuk prototype
        void display();

        //penjabaran methodenya ada di file prototype.cpp
};

//#endif

//--------------------------------------------------------------------------------------
// simulasi file lain
// file prototype.h

//#include <iostream>
//#include <string>         //adalah std library <>
//#include "kelas_player.h" //bukan std librari ""

Player::Player(const char* nama){
    this->nama = nama;
}

void Player::display(){
    cout << this->nama << endl;
}

//---------------------------------------------------------------------------------------------
//simulasi semua class hilang hanya int main

int main(){
    Player* playerObject = new Player("Marni");
    playerObject->display();

    return 0;
}