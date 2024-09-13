//Operator aritmatika ada 5

+ tambah
- kurang
* kali
/ bagi
% modulus (hasil dari sisa pembagian)

//Contoh sederhana:

int main(){
	int a = 6;
	int b = 4;

	int hasil;

	hasil = (a+b)*a;
	cout << hasil << endl;
	cin.get();
	return 0;
}
--------------------------------------
//Jika ingin mengubahnya ke float maka syaratnya adalah tipe data apapun di operasikan dengan type data float, kemudian hasilnya adalah menampilkan type data float
int main(){
	int a = 6;
	float b = 1.5;
	float hasil;

	hasil = (a+b)*a;
	cout << hasil << endl;
	cin.get();
	return 0;
}

// Dan modulus hanya bisa untuk operasi pembagian untuk menampilkan atau menyimpal hasil sisa ke variable sesuai type data
