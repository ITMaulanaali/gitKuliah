
class ikan{

    
}

class ikanKeDua extends ikan{

}

public class nyobain{
    public static void main(String[] args){
        
        ikanKeDua kuda = new ikanKeDua();
        
        //contoh castingUp (dari subclass -> superClass)
        //object kuda dari subclass yang memiliki method x tidak akan bisa digunakan/hilang karena menggunakan method y milik superclass
        ikan ikan1 = (ikan)kuda;
        //contoh castingDown (dari superClass ke subclass kembali)
        //method x dan y akan didapatkan lagi ke object ikan2 karena kini ikan2 adalah subclass yang memiliki warisan dari superclass dan methodnya sendiri
        ikanKeDua ikan2 = (ikanKeDua) ikan1;
        
        
        
        ikan ikan3 = new ikan();
        
        //secara syntax memang benar tapi fungsi atau method yang awalnya berada di subclass tetap tidak akan bisa diakses karena pada dasarnya object ikan3 itu tidak memiliki method dari subclass sehingga castingDown ini hanya memiliki method/variable seperti di casting 3 biasanya
        ikanKeDua ikan4 = (ikanKeDua) ikan3;
    }
}
