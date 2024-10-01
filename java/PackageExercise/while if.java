/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package PackageExercise;
import java.util.Scanner;
/**
 *
 * @author kamu nanyak aku
 */
public class KelasB {

    public static void main(String[] args) {
        Scanner untukInput = new Scanner(System.in);
        
        String nama, kotaAsal, kotaTujuan, jenisKiriman;
        long beratKiriman, hasilKaliKiriman;
        
        System.out.print("Masukkan nama: ");
        nama = untukInput.nextLine();
        
        System.out.print("Masukkan kota asal");
        kotaAsal = untukInput.nextLine();

       
	
	while(kotaAsal != "sby"){
		System.out.println("Masukkan kota asal: ");
		kotaAsal = untukInput.nextLine();
		if(kotaAsal =="sby"){
                        break;
		}
	}
        
        System.out.print("Masukkan kota tujuan: ");
        kotaTujuan = untukInput.nextLine();
	


	while(kotaTujuan != "jakarta" || kotaTujuan != "bandung" || kotaTujuan != "jogja"){
      		System.out.print("Masukkan kota tujuan: ");
       		kotaTujuan = untukInput.nextLine();
		if(kotaTujuan =="jakarta" || kotaTujuan == "bandung" || kotaTujuan == "jogja"){
			break;
		}
	}
        
        System.out.print("Masukkan jenis kiriman: ");
        jenisKiriman = untukInput.nextLine();


	while(jenisKiriman != "surat" || jenisKiriman != "sepeda"){
		System.out.print("Masukan jenis kiriman: ");
        	jenisKiriman = untukInput.nextLine();
		if(jenisKiriman == "surat" || jenisKiriman == "sepeda"){
			break;
		}
		
        System.out.print("Masukkan berat kiriman: ");
        beratKiriman = untukInput.nextLong();
        
        hasilKaliKiriman =(beratKiriman * 20000);
        System.out.println("");
        System.out.println("Paket " + nama + " berupa " + jenisKiriman+ " dikirim dari " + kotaTujuan + " menuju " + kotaAsal + " dengan berat " + beratKiriman + "kg biayanya sebesar " + hasilKaliKiriman);
    }
}
