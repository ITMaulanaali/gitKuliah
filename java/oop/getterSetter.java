
class pemain{
    private String nama;
    private int umur;
    
    pemain(String namaPemain, int umurPemain){
        this.nama = namaPemain;
        this.umur = umurPemain;
        
    }
    
    String tampilkanAtauGetter(){
        return "namanya: " + this.nama + " umurnya: " + this.umur;
    }
    
    void updateAtauSetter(String namaPemain, int umurPemain){
        this.nama = namaPemain;
        this.umur = umurPemain;
    }
    
    public static void main(String[] args){
        pemain ikan = new pemain("aku",12);
        String tampilkanNilai = ikan.tampilkanAtauGetter();
        System.out.println(tampilkanNilai);
        
        ikan.updateAtauSetter("bukan aku", 20);
        System.out.println(ikan.tampilkanAtauGetter());
    }
}
