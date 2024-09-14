/*	define adalah bagian dari preprocessing directive.
Yang berarti karena preprocessing directive tidak menggunakan memory maka fungsi dari define untuk mendefinisikan sesuatu kepada alias tidak akan menyimpan memory.
*/

#include <iostream>
#define PI 3.14 //PI disini berarti literal 3.14 menggantikan 3.14 ke PI

int main(){
	cout << PI << endl;
	cin.get();
	return 0;
}
