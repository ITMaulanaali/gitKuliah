#include <iostream>
using namespace std;

int main(){
	
	//Bilangan bulat
	 unsigned short a = 5; -> 2byte->8bit
	 int -> 4byte->32bit
	 long -> 8byte->64bit

	//Bilangan decimal
	float -> 4byte
	double -> 8byte

	//character
	char -> 1byte

	//boolean
	bool -> 1byte

	cout << a << endl;
	cout << sizeof(a) << " byte" << endl; //sizeof untuk mengetahui berapa range variable integer a
	cout << numeric_limits<unsigned int>::max() << endl; //numeric_limits<int>::max digunakan untuk mengetahui maksimal angka 4 byte yaitu: 32bit -> 2^32 adalah 2147483647
	cout << numeric_limits<int>::min() << endl; //dan paling kecil -2147483648
	cin.get(); //untuk input dari terminal karena jika menggunakan windows terminal akan langsung hilang
	return 0;
}

//Dalam bahasa pemrograman sendiri hanya mengenal range byte
/*Sebenarnya range dari tipe data di atas hanya menggunakan -1bit dari total rangenya karena digunakan sebagai signed yaitu dapat digunakan untuk bilangan positif dan negatif.
	Karena hal tersebut nilai 1byte->8bit=128 akan hanya mendapatkan 7bit yaitu=64 sehingga +64 dan -64.
	tambahkan unsigned pada tipe data dan variable agar nilainya tetap +8bit
*/
