package Test;

public class pemain{

    private String nama;
    private int umur;
    
    private class groupPrivate{
        
    }
    
    public pemain(String namaPemain, int umurPemain){
        this.nama = namaPemain;
        this.umur = umurPemain;
        
    }
    
   static void tampilkan(){ //tidak akan dapat diakses jika class ini dipanggil di luar package nya namun bisa langsung dipanggil tanpa membuat object terlebih dahulu jika diakses dalam satu package yang sama (static)
        System.out.println("namanya: " + this.nama + " umurnya: " + this.umur);
        groupPrivate privasi = new groupPrivate();
    }
    
}

//class, data/objectMember, function/method tanpa modifier = default yaitu bisa diakses hanya pada package yang sama (Test)
//public class, data/object, funtion/method = sebuah class akan bisa di import atau akses dari package yang berbeda namun percuma karena data/objectMember serta function atau method tidak akan dapat diakses atau panggil karena tidak memiliki modifier. Sehingga wajib jika class diberikan modifier public dengan tujuan akses function/methodnya di luar package maka harus tambah bahkan modifier public juga
//modifier public pada class, private data/objectMember, public function/methode = maka hanya data member yang hanya dapat diakses oleh kelas itu sendiri (tidak bisa dipanggil di class lain) Biasanya ini banyak digunakan dan memang best practice. Untuk manipulasi nilai di dataMember biasanya menggunakan getter dan setter
//private class = class tersebut hanya bisa digunakan untuk dirinya sendiri. modifier private ke class hanya bisa dilakukan pada inner class(class di dalam class induk)
