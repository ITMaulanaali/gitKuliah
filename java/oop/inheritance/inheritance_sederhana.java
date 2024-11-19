
class ikan{
    
    private String nama = "dari super class ikan"; //jika class ini mewariskan datameber dan fuction/method maka private akan menyebabkan tidak bisa di wariskan
    
    void getName(){
        System.out.println("Ini getName di class ikan" + this.nama);
    }
    
}

class ikanKeDua extends ikan{
    
}

public class nyobain{
    public static void main(String[] args){
        
        ikanKeDua kuda = new ikanKeDua();
        System.out.println(kuda.nama); //ini akan error karena ikan.nama(superclass) di private
        kuda.getName();
    }
}
