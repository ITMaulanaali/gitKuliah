// Digunakan untuk fungsi yang sama namun dengan berbagai macam input type data yang berbeda dapat digunakan.

#include <iostream>
#include <string>

using namespace std;

template<typename T>
void print(T data){ // T disini adalah semua type data dan data adalah variable input
	cout << data << endl;
}

int main(){
	print(5);
	print(5.8);
	print('c');
	cin.get();
	return 0;
}
