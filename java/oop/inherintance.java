
class ikan{
    String nama; //tidak boleh di private karena ketika di extends akan tidak terbaca di class lain
    
}

class ikanKeDua extends ikan{
    //kita tidak bisa melakukan inisisalisasi nama di superclass(error) dengan this.nama. Itu sama saja seperti membuat variable string nama di class ini(membuat lagi)
    private String namaDariIkanKeDua;
    
    public void setName(){
        this.nama = "hai";
        this.namaDariIkanKeDua = this.nama;
    }
    
    public void getName(){
        System.out.println(this.namaDariIkanKeDua);
        
    }
}

class ikanKeTiga extends ikanKeDua{
    
}


public class nyobain{
    
    public static void main(String[] args){
        
        ikanKeTiga kuda = new ikanKeTiga();
        kuda.setName();
        kuda.getName();
    }
}

//dapat disimpulkan bahwa extends akan mewariskna data member dan function/methodnya sehingga bisa kita manipulasi dan gunakan di class lain. Mirip import tapi mungkin ini istimewa karena bisa overriding
