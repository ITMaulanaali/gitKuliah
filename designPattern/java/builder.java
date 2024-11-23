//Builder pattern adalah pola desain program yang tujuannya untuk memisahkan/mempermudah/memfleksibelkan proses pembuatan object yang kompleks di class lain
//Contoh penerapan dibawah ini kita membuat object dengan constructor yang panjang, nah olehh karena kompleksnya argument dan menyusahkan maka kita buat lebih flexibel dengan menggunakan pola desaign builder pattern yaitu class objectBuilder

public class objectBuilder {
    private String ikan1;
    private String ikan2;
    private String ikan3;
    private String ikan4;
    private String ikan5;
    
    public objectBuilder setIkan1(String ikanyangsatu){
        this.ikan1 = ikanyangsatu;
        return this;
    }
    
    public objectBuilder setIkan2(String ikanyangdua){
        this.ikan2 = ikanyangdua;
        return this;
    }
    
    public objectBuilder setIkan3(String ikanyangtiga){
        this.ikan3 = ikanyangtiga;
        return this;
    }
    
    public objectBuilder setIkan4(String ikanyangempat){
        this.ikan4 = ikanyangempat;
        return this;
    }
    
    public objectBuilder setIkan5(String ikanyanglima){
        this.ikan5 = ikanyanglima;
        return this;
    }
    
    //tapi sebenarnya by default ini sama saja dengan membuat object bikinObject itu. Sehingga panggil function ini sudah seperti membuat constructor
    public bikinObject hasil(){
        return new bikinObject(
        this.ikan1,
        this.ikan2,
        this.ikan3,
        this.ikan4,
        this.ikan5);
    }
}

//Biasanya ditaruh di file lain dan cukup memakai kelas objectBuilder ini untuk membuat object utama(bikinObjet) dibawah dari/dengan fungsi hasil yang mereturn object bikinObject diatas
//class diatas berguna untuk mempermudah memasukan argument ke constructor bikinObject tanpa membuatnya error jika salah satu variable tidak diisi di argument. Karena bydefault jika setter tidak diisi atau nilai variable kosong akan di inisialisasi null atau kosong. Sehingga argument this.variable yang dimasukkan ke constructor dari function hasil tidak akan error seperti tidak di isi
//Contoh pemanggillanya pun bisa dilakukan di file lain seperti ini:
//new objectBuilder.setIkan1("hai").setIkan2("halo").hasil().tampilkan()

class bikinObject {
    private String ikan1;
    private String ikan2;
    private String ikan3;
    private String ikan4;
    private String ikan5;
    
    bikinObject(String ikanKu1, String ikanKu2, String ikanKu3, String ikanKu4, String ikanKu5){
        this.ikan1 = ikanKu1;
        this.ikan2 = ikanKu2;
        this.ikan3 = ikanKu3;
        this.ikan4 = ikanKu4;
        this.ikan5 = ikanKu5;
    }
    
    public void tampilkan(){
        System.out.println(this.ikan1 + this.ikan2 + this.ikan3 + this.ikan4 + this.ikan5);
    }
}
