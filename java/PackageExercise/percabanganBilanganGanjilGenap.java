package PackageExercise;
import java.util.Scanner;

public class percabanganBilanganGanjilGenap {
    
    public static void main(String[] args){
        
        Scanner inputUser = new Scanner(System.in);
        System.out.print("Masukkan angka dari fungsi main: 8");
        int angka = inputUser.nextInt();

        if(angka % 2 == 0){
            System.out.println("hasilnya genap");
        }else{
            System.out.println("hasilnya ganjil");
        }
        inputUser.close();
    }
}
