
class ikan{
    
    String nama = "dari superclass ikan";
    
    ikan(String keterangan){
        System.out.println(keterangan + this.nama);
    }
    
    static void statis(){
        System.out.println("hasil static dari class ikan");
    }
    
}

class ikanKeDua extends ikan{
    //mengoverride data member dari yang dimikili superclass
    String nama = "dari subclass ikanKeDua";
    
    //constructor dan static pada dasarnya adalah bagian dari class itu sendiri. Sehingga bukan untuk diwariskan(inherintance). Maka pemanggilannya juga berbeda. Kita tidak bisa membuat override constructor superclass.
    ikanKeDua(String keterangan){
        super(keterangan); //super=memanggil dirinya superclass sendiri(argument)
    }
    
    //pemanggilan static menggunakan nama dari class tersebut(ikan). Kita tidak bisa menggunakan super karena super sebenarnya adalah fitur untuk mengambil isi dari class yang diwariskan. Namun static itu adalah bagian dari class itu sendiri. Bukan per object yang dibuat nantinya
    void pemanggilanStatic(){
        ikan.statis(); //memanggil langsung method dari object class(class itu sendiri(superclass))
    }
}

public class nyobain{
    public static void main(String[] args){
        
        ikanKeDua kuda = new ikanKeDua("Ini constructor dari superclass |");
        kuda.pemanggilanStatic();
        
    }
}
