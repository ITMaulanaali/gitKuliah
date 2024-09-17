//inheritance dalam bahasa indonesia mewarisi adalah istilah program dalam c++ untuk membuat suatu class menjadi subclass dari class lain.
//ini berbeda dengan pewarisan menggunakan friend. Meskipun sama secara fungsi namun friend bisa lebih advance untuk bertukar functionnya saja atau hingga classnya dengan pendekatan sendiri atau program  milik sendiri.
//sedangkan untuk inheritance bisa lebih sederhana dan memiliki syntaxnya sendiri.

#include <iostream>
#include <string>

using namespace std;

class Hero{ //menjadi subclass dari class HeroIntel dengan pemanggilan yang sederhana
    public:
        string name;

        void sayName(){
            cout << "nama saya" << this->name << endl;
        }
};

class HeroIntel : public Hero{ //ini membuat public dari class Hero di duplicat juga ke HeroIntel tapi tidak untuk datanya

};

int main(){

    Hero lana;
    lana.name = "dari hero aja ini";
    cout << lana.name << endl;          //menampilkan dari hero aja ini
    lana.sayName();                     //menampilkan dari hero aja ininama saya

    HeroIntel rangga;
    cout << rangga.name << endl;        //tidak menampilkan apapun karena tidak di deklarasikan atau tidak memiliki nilai
    rangga.sayName();                   //menampikan nama saya
}