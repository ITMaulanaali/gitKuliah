package PackageExercise;

import java.util.Scanner;

class KonversiDesimal_Biner{ //class induk
    private int[] nilaiBiner = new int[8];
    private int nilaiDesimal;
    
    void inputan(String pilihan){
        
        if(pilihan == "biner"){
            
            Scanner inputBiner = new Scanner(System.in);
            System.out.print("Masukkan nilai Biner: ");
            
        
            while(true){
                int scan = inputBiner.nextInt();
                if(scan == 0 || scan == 1){
                   for(int i=0; i<=7; i++){
                   this.nilaiBiner[i] = inputBiner.nextInt();
                   }
                   break;
                }else{
                    System.out.println("Tolong masukkan nilai antara 1 atau 0");
                }
            }
            
        }else if(pilihan == "desimal"){
            
            Scanner inputDesimal = new Scanner(System.in);
            System.out.print("Masukkan nilai desimal: ");
            
            while(true){
                int scan = inputDesimal.nextInt();
                if(0 <= scan && 255 >= scan){
                    this.nilaiDesimal = inputDesimal.nextInt();
                    break;
                }else{
                    System.out.println("Tolong masukkan nilai antara 1 - 254");
                }
            }
            
        }else{
            System.out.println("Mohon masukkan \"biner\" atau \"desimal\"");
        }
    }
    
    void operasiBinerToDesimal(){
        //1 2 4 8 16 32 64 128
        //1 2 3 4 5   6  7  8 pass 8bit
        //sekarang bagaimana menjadikan 1 0 0 1 1 1 1 1 bisa jadi desimal?
        //bila dilihat dari polanya untuk index ke 7 adalah 1 kemudian dikali 2 seterusnya atau
        //2^0 2^1 2^3 2^4 ...
        
        //1 * 1 = 1
        //1 * 2 = 2
        //1 * 4 = 4
        //0 * 8 = 0
        //0 * 16 = 0
        //0 * 32 = 0
        //0 * 64 = 0
        //0 * 128 = 0
        int j =1;
        int hasilDesimal = 0;
        
        for(int i = 7; i>=0; i-- ){
            hasilDesimal += this.nilaiBiner[i] * j;
            j*=2;
        }
        System.out.println("desimalnya adalah: "+ hasilDesimal);
    }
    
    void operasiDesimalToBiner(){
        //untuk desimal ke biner itu penjumlahan dari bit kiri ke kanan
        //128 + 64 + 32 + 16 + 8 + 4 + 2 + 1;
        //x2    x2   x2   x2   x2  x2  x2  x2
        
        //disini terlihat bahwa jika dari index kiri atau index ke7 desimalnya dibagi2 dan di modulus akan menghasilkan 0
        //maka jika desimal 128 = 0 yang harusnya 1,
        //Tapi disini Saya menemukan pola lain bahwa jika seandainya 01111111 maka dibalik 10000000 (gerbang logika not)
        //untuk 192 = 00111111 -> 11000000 | 00000011 setelah dibagi dibalik aja
        //untuk 160 = 01011111 -> 10100000 | 00000101 setelah itu dibalik hasil modulus tiap angka -> 10100000 (correct)
        //untuk 53 =  11001010 -> 00110101 (corrext)
        this.nilaiBiner[7] = this.nilaiDesimal % 2;
        int pembagianBertingkat = 2;
        for(int i=6; i>=0; i--){
            this.nilaiBiner[i] = ((this.nilaiDesimal / pembagianBertingkat) % 2);
            pembagianBertingkat *= 2;
            
        }
        for(int i=0; i<=7; i++){
            System.out.print(this.nilaiBiner[i]);
        }
        System.out.println();
    }
}
