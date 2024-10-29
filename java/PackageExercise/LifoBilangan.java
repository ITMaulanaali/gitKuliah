package PackageExercise;

import java.util.Scanner;

class LifoBilangan{
    
    public static void main(String[] args){
        Scanner angka = new Scanner(System.in);
        System.out.println("masukkan 7angka: ");
        
        int nilai = angka.nextInt();
        
        int hasilAkhir = (nilai % 10);
        System.out.print(hasilAkhir);
        
        int pembagian = 1;
        for(int i = 0; i<=6; i++){
            
            
            int hasilAkhir2 = (nilai / (pembagian = pembagian * 10)) % 10;
            System.out.print(hasilAkhir2);
        }
    }
}
