
class ikan{
    /*protected*/ private String nama = "nama dari abstract"; //modfier protected membuat method atau variable untuk dapat diakses hanya oleh kelas turunannya(subclass) seberapapun banyaknya subclass. Dan tidak akan bisa diakses oleh class lain yang melakukan import atau bahkan dalam satu package sekalipun.
    
    protected void getName(){ //implementasi protected sebaiknya di method dan variable selalu private agar hanya fungsi tertentu seperti getName atau setName untuk akses ke variable atau fungsi lainnya
        System.out.println(this.nama);
    }
}

public class nyobain{
    public static void main(String[] args){
        
        ikan kuda = new ikan();
        kuda.getName();
    }
}
