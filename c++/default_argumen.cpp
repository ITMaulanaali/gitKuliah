/*Default argumen adalah dimana jika argumen atau salah satu argumen/input tidak di isi maka by default akan menggunakan nilai default

default argumen ini selalu di taruh di atas baik itu jika ada prototype argumen maka tetep ditaruh nilai default argumenya di fungsi yang atas.
*/


#include <iostreamt>
using namespace std;

double volumeKubus(double p, double l, double t = 1);

int main(){
	cout << "volume kubus: " << volumeKubus(3,4) << endl;
	cin.get();
	return 0;
}

double volumeKubus(double p, double l, double t){
	return p * l * t;
}
