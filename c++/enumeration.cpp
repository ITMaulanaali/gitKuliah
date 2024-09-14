/*	Enumeration atau dalam arti, penyebutan satu demi satu. Enumeration sulit untuk Saya jelaskan tapi intinya
Enum ini sangat cocok jika kita membutuhkan daftar kata dengan nilai tetap. Enum ini berindex dari 0 dan jika ditengah di beri angka lain maka nilai tersebut akan terurut tetap sebagai index.
Karena memang yang dibutuhkan dari enum adalah katanya yang memiliki nilai index.
*/

#include <iostrem>
using namespace std;

enum warna {merah, putih, kuning, hijau = 8, biru, merah}

int main(){
	warna baju;
	baju = merah; //maka hasilnya 0
	baju = hijau; //maka hasilnya 8
	baju = biru; //maka hasilnya 9

	cin.get();
	return 0;
}
