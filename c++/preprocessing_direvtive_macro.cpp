/*	define adalah bagian dari preprocessing directive. disebut macro
Yang berarti karena preprocessing directive tidak menggunakan memory maka fungsi dari define untuk mendefinisikan sesuatu kepada alias tidak akan menyimpan memory.
*/

#include <iostream>
#define PI 3.14 //PI disini berarti literal 3.14 menggantikan 3.14 ke PI
#define KUADRAT(X) (X*X) // artinya kuadrat(input) (input*input)
#undef PI //menhilangakan alias PI

#define MAX(A,B) ((A>B) ? A:B) //ternary operator (constanta) mirip if else

#if PI == 3.14
	#define LANG "indonesia"
#else
	#define LAN "english"
#endif

int main(){
	cout << PI << endl;
	cin.get();
	return 0;
}

--------------------------------------------------------------------------
/*	Preprocessing
		-ifdef
		-ifndef
		-pragma
*/

#define FOO

#ifdef FOO //untuk mengecek apakah FOO ada(ifdefinition)
	#define TEST_FOO "foo ada"
#else
	#define TEST_FOO "foo tidak ada"
#endif
------------------------

#ifndef FOO //untuk mengecek apakah FOO tidak ada (ifundefinition)
	#define FOO "membuat foo"
#endif

-------------------------

#pragma once //Jika ada define yang di iclude seperti PI maka tidak usah maka pragma once otomatis tidak menginclude PI lagi. Karena compiler selalu error jika ada 2 preprocessing yang sama didefinisikan 2 kali.

