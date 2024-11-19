
class ikan{
    
    String nama = "dari super class ikan";
    
    void getName(){
        System.out.println("Ini getName di class ikan |" + this.nama);
    }
    
}

class ikanKeDua extends ikan{
    //mengoverride data member dari yang dimikili superclass
    String nama = "dari subclass ikanKeDua";
    
    //mengoverride methode yang dimiliki superclass
    void getName(){
        System.out.println("ini getName di class ikanKeDua |" + this.nama);
    }
}

public class nyobain{
    public static void main(String[] args){
        
        ikanKeDua kuda = new ikanKeDua();
        
        //ini akan menggunakan dataMember atau variable serta methode dari subclass(overridenya). Sehingga method dan variable tersebut murni menggantikan milik superclass. Jika tidak di override maka proses dibawah ini akan mengambil method milik superclass
        System.out.println(kuda.nama);
        kuda.getName();
    }
}
