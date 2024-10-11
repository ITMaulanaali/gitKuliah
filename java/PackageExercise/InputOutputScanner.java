package PackageExercise; //paket yang mengartikan semua class di dalam hanya bisa diakses oleh class lain di satu package yang sama kecuali class yang public dapat di akses oleh package lain
import java.util.Scanner;

public class InputOutputScanner{ //public class selalu bernama sesuai nama filenya

	public static void main(String[] args){

		int usia;
		Scanner untukInputData = new Scanner(System.in);
		System.out.print("Masukkan usia anda: ");

		usia = untukInputData.nextInt();
		System.out.print("Usia anda adalah: " + usia);

		untukInputData.close();
	}
}
