//Sebenarnya konsep enkapsulasi dimana antara class 1 dengan class lain bisa menggunakan methodnya. 
//Ini menggunakan getter dan setter

//Contoh class playerGame dan class Senjata
//Kita ingin object playerGame dapat menggunakan senjata padahal kita tahu object playerGame hanya bisa menggunakan method dari class playerGame

//Maka si class senjata menyediakan setter dan getter untuk digunakan player

#include <iostream>
#include <string>

using namespace std;


class Weapon{
    private:
        string name;
        double attackPower;
        
    public:
        Weapon(const char* name, double attackPower){

            this->name = name;
            this->attackPower = attackPower;
        }

        void display(){

            cout << "weapon ini adalah" << this->name << endl;
            cout << this->attackPower << endl;
        }

};

class Player{
    private:
        string name;
        Weapon* weapon; //membuat object weapon di dalam private class Player(masih kosong)

    public:
        Player(const char* name){

            this->name = name;
        }
        
        void display(){

            cout << "player ini adalah" << this->name << endl;
            this->weapon->display(); //memanggil atau berada ke object weapon. Karena weapon adalah object yang memiliki method display maka di panggil juga. ketika pemanggilan method tersebut ini meng cout datanya seperti menggunakan senjata.display() seperti biasa di int main namun kini kita hanya perlu menjalankan display di class player "pemain.display()" untuk memunculkan keduanya.
        }

        void equipWeapon(Weapon* weapon){
            this->weapon = weapon;
        }

};
 
int main(){

    Player* pemain = new Player("sniper");
    Weapon* senjata = new Weapon("senapan", 50); //sebuah jembatan object untuk memasukan data ke object senjata kemudian object senjata ini datanya di assignt ke object weapon di class Player

    pemain->equipWeapon(senjata); //setter(ada inputnya) dari class player untuk memasukkan data senjata dari class object ke object weapon yang ada di class Player.
    pemain->display();

    return 0;
}

//Program ini membuat sebuah korelasi antara class Player dan class Weapon. Dimana class Player ini yang digunakan untuk utamanya atau core sedangkan class Weapon adalah childnya atau class yang berisi tools bantu seperti weapon(senjata) yang bisa digunakan oleh class Player.
//Gampangnya kita menggunakan class Player dengan library class Weapon. Sehingga terjadilah sub class dalam class Player.