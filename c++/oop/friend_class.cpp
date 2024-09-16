#include <iostream>
#include <string>

using namespace std;

class Persegi{
    friend class PersegiPanjang;
    private:
        double sisi;

    public:
        Persegi(double sisi){
            this->sisi = sisi;
        }

        double luas(){
            return this->sisi * this->sisi;
        }
};

class PersegiPanjang{
    private:
        double panjang;
        double lebar;

    public:
        PersegiPanjang(double panjang, double lebar){
            this->panjang = panjang;
            this->lebar = lebar;
        
        }

        double luas(){
            return this->panjang * this->lebar;

        }

        bool isLebihPanjang(const Persegi &obj){
            bool isTrue = this->panjang > obj.sisi;
            return isTrue;
        }
};  

int main(){

    Persegi persegi = Persegi(5);
    PersegiPanjang kotakPanjang = PersegiPanjang(5,10);

    cout << persegi.luas() << endl;
    cout << kotakPanjang.luas() << endl;
    bool logika = kotakPanjang.isLebihPanjang(persegi);

    //cout << logika << endl;
    return 0;
}

//masih kurang paham untuk ini