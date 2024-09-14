//casting operator itu mirip seperti saat memprogram c++ arduino supaya data jadi string.

#include <iostream>
using namespace std;

int main(){
	int a = 5;
	float b = 6.67f;

	cout << a + b << endl; // ini disebut implisit karena kita tidak tahu apakah hasilnya akan float atau int. Maka dari itu di butuhkan casting operator
	cout << (float)a + b << endl; //ini disebut casting

	cin.get();
	return 0;
}
