
class ikan{
    String nama; //tidak boleh di private karena ketika di extends akan tidak terbaca di class lain
    
    void getName(){
        System.out.println("apen-apen nilai nama");
    }
    
}

class ikanKeDua extends ikan{
    //kita tidak bisa melakukan inisisalisasi nama di superclass(error) dengan this.nama. Itu sama saja seperti membuat variable string nama di class ini(membuat lagi)
    private String namaDariIkanKeDua;
    
    
    public void setName(String i){
        this.nama = i;
    }
    
    public void setName(String namaAwal, String namaAkhir){ //ini disebut overloading atau nama methodnya sama dengan parameter yang berbeda
        this.nama = namaAwal + namaAkhir;
        
    }
     
    public void getName(){ //ini disebut overriding dari kategori extends yaitu menimpa atau mengganti method getName yang sudah ada(diwariskan oleh ikan) dengan getName buatan sendiri
        System.out.println("nilai ikanKedua");
        System.out.println(this.nama);
        
    }
}


public class nyobain{
    
    public static void main(String[] args){
        
        //ini tidak menerapkan contoh overriding
//        ikanKeTiga kuda = new ikanKeTiga(); 
//        kuda.setName();
//        kuda.getName();

        ikanKeDua kuda = new ikanKeDua();
        kuda.setName("aku");
        kuda.getName();
            
    }
}

//dapat disimpulkan bahwa extends akan mewariskna data member dan function/methodnya sehingga bisa kita manipulasi dan gunakan di class lain. Mirip import tapi mungkin ini istimewa karena bisa overriding

