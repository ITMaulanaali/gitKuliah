package PackageExercise;
import java.util.Scanner;

public class kasirDiskonIfElseNester {
    public static void main(String[] args){

        Scanner inputUser = new Scanner(System.in);

        System.out.print("silahkan masukkan total belanjaan anda: ");
        int harga = inputUser.nextInt();
        int diskon = 0;
        System.out.print("apakah anda memiliki kartu anggota? jawab 'ada' bila memiliki: ");
        String kartuAnggota = inputUser.next();

        if(kartuAnggota.equals("ada")){
            if(harga >=500000){
                System.out.println("selamat anda mendapatkan diskon 50.000");
                diskon = 50000;
            }else{
                System.out.println("selamat anda mendapatkan diskon 25.000");
                diskon = 25000;
            }
        }else{
            if(harga >=200000){
                System.out.println("Selamat anda mendapatkan diskon 20.000");
            }else{
                diskon = 0;
            }
        }
        inputUser.close();

        System.out.printf("silahkan bayar senilai %d", harga-diskon);
    }
}
