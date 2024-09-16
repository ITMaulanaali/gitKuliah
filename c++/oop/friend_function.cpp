//Membuat function di antar class berbeda pada semua modifier dapat saling terhubung

#include <iostream>
#include <string>

using namespace std;

class IntelHero;
class StrengthHero{
    private:
        string name;
        double health;

    public:
        StrengthHero(const char* name){

            this->name = name;
            this->health = 100;
        }

        //membuat method friend dengan type boolean
        friend bool compare(StrengthHero* hero1, IntelHero* hero2);
        friend bool compare(IntelHero* hero2, StrengthHero* hero1);

};

class IntelHero{
    private:
        string name;
        double health;

    public:
        IntelHero(const char* name){
            this->name = name;
            this->health = 50;
        }

        //membuat method friend dengan type boolean
        friend bool compare(StrengthHero* hero1, IntelHero* hero2);
        friend bool compare(IntelHero* hero2, StrengthHero* hero1);
};

bool compare(StrengthHero* hero1, IntelHero* hero2); //ini maknanya friendnya sih kedua class itu ada di bool compare

int main(){

    
}

//Pelajari lagi untuk friend function ini. Karena jika di lihat ini malah membuat tujuan dari class itu hilang. bahkan tidak terencapsulation. Meskipun memang ini adalah bawan dari bahasa c++ itu alias bukan library