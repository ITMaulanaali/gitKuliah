
class ikan{

    String nama = "lana";
    int serang = 100;
    
    void polymorphism(ikan classMengExtends){ //sehingga jelas bahwa karena kita menggunakan kelas ikan sehingga tidak bisa mengambil method dari class subclass ikaKeDua
        classMengExtends.nama = "Menjadi bukan lana";
        System.out.println("nama dari class ikandua " + classMengExtends.nama); //milik class ikanKeDua tapi this.nama milik sih class ikan
        
        
    }
    
}

class ikanKeDua extends ikan{

    String armor = "kuat"; //armor disini jelas tidak bisa diakses di polymorphism karena memang bukan milik superclass yang di parameter melainkan miliki subclass. Sehingga kita sesuaikan dengan problem kita
    
}

public class nyobain{
    public static void main(String[] args){
        
        ikan kuda1 = new ikanKeDua(); //sama seperti casting(merubah dari body class ikanKeDua menjadi isian hanya di ikan
        ikan kuda2 = new ikanKeDua();
        
        kuda1.polymorphism(kuda2);
        
    }
}
