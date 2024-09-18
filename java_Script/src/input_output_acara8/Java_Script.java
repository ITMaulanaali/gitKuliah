
package input_output_acara8;

import java.util.Scanner;

public class Java_Script {

    public static void main(String[] args) {
        
        Scanner perhitungan = new Scanner(System.in);
        
        //variable hasilBilangan saat assigned by bilangan1 + bilanagan2 terdeteksi error conversi dari int ke byte
        byte bilangan1, bilangan2, hasilBilangan; 
        
        System.out.print("Tolong masukan bilangan1: ");
        bilangan1 = perhitungan.nextByte();
        
        System.out.print("Tolong masukan bilangan2: ");
        bilangan2 = perhitungan.nextByte();
        
        hasilBilangan = bilangan1 + bilangan2;
        System.out.println(hasilBilangan);
        
    }
    
}
