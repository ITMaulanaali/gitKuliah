//keyword di class untuk membuat variable di class atau disebut member data menempel pada si classnya itu sendiri.
//Maknanya ketika si variable/member data itu berisi nilai baik bertype int, string,char,double dan apapun itu akan di simpan di si class itu bukan di object dari class.Contoh:

#include <iostream>

using namespace std;

class Hero{
    public:
        static int memberDataHero; //ini mengartikan bahwa ketika memberDataHero ini bertambah nilainya maka semua object yang menggunakan class ini akan ikut bertambah juga nilainya. Hal ini terjadi karena memberDataHero di set static atau nilainya tetap di class Hero bukan di objectnya(lana,rangga,alpi dsb...)
        Hero(int memberDataHero = 1){
            this->memberDataHero = memberDataHero;
            memberDataHero++;
        }

        void display(){
            cout << this->memberDataHero << endl;
        }
};

int main(){
    
    Hero lana = Hero(2);
    lana.display();
}