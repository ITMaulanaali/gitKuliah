//Getter berasal dari kata get/ dapat/ambil sehingga getter adalah pengambil
//setter berasal dari kata set/ setting/atur sehingga setter adalah pengatur
//Adalah sebuah istilah yang mengacu bahwa si program di class itu hanya read only atau hanya bisa diambil (getter)
//sedangkan setter artinya program di class itu bisa di set atau di manipulasi(write)

#include <iostream>
#include <string>

using namespace std;

class game{

    public:
        game(const char* hero){
            this->hero = hero;

        }

        string getHero(){   //getter, fungsi diluar class dapat membaca variable atau member data hero yang berada dia class game dengan metho berikut
            return this->hero;
        }


        void display(){
            while(this->level <= 10){
                cout << "Masukan exp: ";
                cin >> expUp;
                cout << this->hero << endl;
                cout << this->level << endl;
                cout << this->exp << endl;
                this->levelUp();
            }
        }

    private:
        string hero;
        short level = 1;
        int exp = 20;
        int expUp;
        
        void levelUp(){ //setter, contoh pemain hero tidak bisa secara maunya mengubah levelnya. Sehingga ketika program dijalankan di main misalnya(user lain yang menggunakan library class ini) tidak akan bisa mengubah data di private kecuali memanggil getUp() dan ini memiliki syntax atau parameternya sendiri ketika akan mengubah data. Dengan begitu member data level hanya bisa di ubah dengan mengubah exp ini disebut setter;
            if(expUp >= 0 and expUp <= 100){
                this->exp += expUp;
                if(this->exp >= 100){
                    this->exp = 0;
                    this->level ++;
                }
            }
        }
};

int main(){

    game* lana = new game("pemainLana");

    lana->display();

}