
class pemain{
    String nama;
    int umur;
    
    pemain(String namaPemain, int umurPemain){
        this.nama = namaPemain;
        this.umur = umurPemain;
        
    }
    
    void tampilkan(){
        System.out.println("namanya: " + this.nama + " umurnya: " + this.umur);
    }
    
}

class Main {
    public static void main(String[] args){
        pemain hero = new pemain("lucifer",12);
        hero.tampilkan();
        
        //melakukan reference objek hero ke aku. Ini tidak melakukan duplikat namun reference
        pemain aku = hero;
        aku.nama = "bukan lucifer";
        aku.tampilkan();
        
    }
}
