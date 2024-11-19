
class ikan{
    
    String nama = "dari superclass ikan";
    
    void getName(){
        System.out.println("Ini getName di class ikan |" + this.nama);
    }
    
}

class ikanKeDua extends ikan{
    //mengoverride data member dari yang dimikili superclass
    String nama = "dari subclass ikanKeDua";
    
    void getName(){
        this.nama = super.nama; //karena ikan.nama di override maka kita bisa menggunakan super untuk memanggil nama di superclass(ikan.nama)
        System.out.println("ini getName di class ikanKeDua |" + this.nama); //ini akan merubah nilai di ikanKeDua.nama menjadi nilai sama seperti di ikan.nama(superclass) meskipun bisa juga untuk mengganti sysout this.nama dengan super.nama sehingga tidak merubah nilai ikanKeDua.nama
    }
}

public class nyobain{
    public static void main(String[] args){
        
        ikanKeDua kuda = new ikanKeDua();
        
        
        System.out.println(kuda.nama); //hasilnya "dari subclass ikanKeDua"
        kuda.getName(); //hasilnya "dari superclass ikan"
        
    }
}

