
//jadi untuk factoryMethod pattern ini bisa dibilang suatu pola untuk membuat constructor di fungsi pada class lain. Sehingga kita bisa mennyederhanakan argument atau menambahkan sesuatu dan tinggal panggil saja functionnya
//contoh implementasi dibawah ini adalah ketika kita sudah punya data seorang manager yaitu gajisekian, umurharussekian, harus sarjana, dll. Kita bisa membiarkan  saja class pembuatan karyawan itu namun untuk constuctornya kita buat di class factoryMethod sambil memangkas dengan membuat default value berdasarkan nama function yang ingin dipanggil. Dalam arti kita punya banyak default value yang dinamis berdasarkan apa nama fucntionnya
public class factoryMethod {
    
    static karyawan setManager(String namaNya, int umurNya){
        return new karyawan(namaNya,"manager",umurNya);
    }
}

class karyawan{
    private String nama;
    private String jabatan;
    private int umur;
    
    karyawan(String namaNya, String jabatanNya, int umurNya){
        this.nama = namaNya;
        this.jabatan = jabatanNya;
        this.umur = umurNya;
    }
    
}

//class untuk menambah karyawan baru
class main{
    public static void main(String[] args){
//    karyawan karyawan1 = new karyawan("oki","manager",30);
//    karyawan karyawan2 = new karyawan("toki","pembantu",12);
    
    //menambah dengan factory method sehingga class membuat karyawan ini lebih bersih dan mudah di manage
    karyawan karyawan1 = factoryMethod.setManager("oki", 30);
    }

}
