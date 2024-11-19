
//kita tidak dapat membuat instance dari class abstract. dalam arti ini hanya sebagai bantuan untuk menyruh anak buah yang membuat subclass dari superclass ini harus membuat method ini
abstract class ikan{
    String nama = "nama dari abstract";

    abstract void coba();
    
    void getName(){
        System.out.println(this.nama);
    }
}

class ikanKeDua extends ikan{

    @Override
    void coba(){
        System.out.println("tuntutan harus override atau implementasi method yang diabstrack. Dengan ini tiap subclass mempunyai override atau method dengan fungsinya yang berbeda masing-masing/mungkins sama tergantung implementasi");
    }
}

public class nyobain{
    public static void main(String[] args){
        ikanKeDua kuda = new ikanKeDua();
        kuda.coba();
        kuda.getName();
    }
}
