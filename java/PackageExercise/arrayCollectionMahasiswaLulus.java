package PackageExercise;

import java.util.Scanner;

public class arrayCollectionMahasiswaLulus {
    public static void main(String[] args){
        arrayMahasiswaLulus();
    }

    public static void arrayMahasiswaLulus(){
        //membuat program dengan 10 mahasiswa dengan nilai diatasu 70 lulus dan dibawah 70 tidak lulus
        
        Scanner inputUser = new Scanner(System.in);
        int[] nilaiMahasiswa = new int[10]; //sebagai nilai mahasiswa
        
        for(int i=0; i<10; i++){
            
            System.out.printf("Masukkan nilai mahasiswa ke %d: ", i);
            nilaiMahasiswa[i] = inputUser.nextInt();
            
        }
        
        for(int i=0; i<10; i++){
            if(nilaiMahasiswa[i] > 70){
                System.out.println("selamat untuk mahasiswa " + i + " anda lulus dengan nilai: " + nilaiMahasiswa[i]);
            }else{
                System.out.println("Maaf karena mahasiswa " + i + " tidak lulus karena nilainya: " + nilaiMahasiswa[i]);
            }
        }
        inputUser.close();
    }
}
