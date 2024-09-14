/*	Bitwise operator adalah operasi yang mana digunakan untuk memanipulasi suatu data bit pada memory
Ada berbagai macam opearator bitwise seperti:

& yaitu AND
| yaitu OR
^ yaitu XOR
~ yaitu NOT
<< yaitu shitf left
>> yaitu sfhirt right
*/

#include <iostream>
#include <bitset>
#include <string>

using namespace std;

int main(){

	unsigned short a = 5;
	unsigned short b = 10;
	unsigned short c;
	cout << bitset<8>(a) << endl; //maksudnya adalah tampilkan 8 bit data dari variable a
	cout << bitset<8>(b) << endl;

	c = a & b;
	cout << bitset<8>(c) << endl;

	cin.get();
	return 0;
}
