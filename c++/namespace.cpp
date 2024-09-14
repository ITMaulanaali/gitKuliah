/* 	namespace digunakan ketika mungkin kita memiliki banyak functiom yang sama namanya tapi dengan keluannya yang berbedaa atau khusus fungsi ini untuk bagian ini.
Maka kita gunakan namespace untuk memberikan tanda, dan nama fungsi tidak perlu di khawatirkan.
*/

#include <iostream>

namespace lana {
	string a;
	void cout(&a){
		std::cout << &a << std::endl;
	}
}

int main(){
	lana::cout("ikan saja");
}
