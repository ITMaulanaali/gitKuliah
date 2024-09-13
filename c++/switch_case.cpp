/*Switch case mirip seperti if statement dimana ada banyak statement berbeda yang dapat di eksekusi tergantung dari cacse atau kasusnya terpenuhi untuk switchnya  maka statement dari case itu yang akan dilakukan.
	Swtich case akan mengscanning semua casenya apakah kondisi a sama dengan case.
	Jika case pling atas terpenuhi maka semua statement case di bawah akan dilakukan.

Contoh syntax:

switch(value/variable){
	case value: //nilai yang sama seperti di value/variable switch
		statements case 1
	case value2:
		statement case 2
	case value3:
		statement case 3
}
*/

#include <iostream>
using namespace std;

int main(){
	int a;

	cout << "masukkan nilai = "
	cin >> a;

	switch(a){
		case 1:
			cout << "a = 1" << endl;
			break; //bagian dari control flow agar hanya jika case 1 terpenuhi maka case kebawah tidak akan dieksekusi atau langsung melewati statement dari switch atau proses switch

		case 2:
			cout << "a = 2" << endl;
			break;

		case 3:
			cout << "a = 3" << endl;
			break;
	}
	cout <<"akhir dari program" << endl;
	return 0;
}
