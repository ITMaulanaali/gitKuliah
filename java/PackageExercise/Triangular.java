package PackageExercise;

import java.util.Scanner;

class Triangular{
    
    public static void main(String[] args){
        Scanner angka = new Scanner(System.in);
        System.out.print("masukkan nilai: ");
        
        int nilai = angka.nextInt();
        int hasil = 0;
        
        for(int i = nilai; i>=1; i--){
            hasil = hasil+i;
        }
        
        System.out.println("triangular adalah: " + hasil);
    }
}
