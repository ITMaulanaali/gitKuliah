
class pemain{
    String nama;
    int umur;
    //kita bisa buatkan object untuk senjata di pemain. Ini akan melakukan reference
    senjata atributSenjata;
    
    pemain(String namaPemain, int umurPemain, senjata dariClassSenjata){
        this.nama = namaPemain;
        this.umur = umurPemain;
        
        this.atributSenjata = dariClassSenjata;
    }
    
    void tampilkan(){
        System.out.println("namanya: " + this.nama + "umurnya: " + this.umur + "atribut senjatanya: ");
        this.atributSenjata.tampilkan();
    }
    
}

class senjata{
    private String namaSenjata;
    private String kekuatanSenjata;
    private String warnaSenjata;
    
    //kita buat constructor untuk inisialisasi
    senjata(String namaSenjata, String kekuatanSenjata, String warnaSenjata){
        this.namaSenjata = namaSenjata;
        this.kekuatanSenjata = kekuatanSenjata;
        this.warnaSenjata = warnaSenjata;
    }
    
    void tampilkan(){
        System.out.printf("\nnamaSenjata adalah:\t%s\nkekuatanSenjata adalah:\t%s\nwarnaSenjata adalah:\t%s\n", namaSenjata, kekuatanSenjata, warnaSenjata);
    }
    
}

class Main {
    public static void main(String[] args){
        senjata atributSenjata = new senjata("Pistol","120","hitam");
        pemain hero = new pemain("aku", 19, atributSenjata); //memasukkan object dari class lain ke dalam class pemain
        hero.tampilkan();
        
        //atau
        
//        pemain hero = new pemain("aku", 21, new senjata("palu", "200", "kuning"));
//        hero.tampilkan();
    }
}
