package PackageExercise;

import java.util.Scanner;

public class arrayCollectionMahasiswaLulus {
    public static void main(String[] args){
        // arrayMahasiswaLulus();
        ganjilGenap();
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

    public static void ganjilGenap(){
        //program 2 object array menyimpan nilai dan hasil untuk ditampilkan ganjil dan genap
        Scanner inputUser = new Scanner(System.in);
        int[] genapGanjil = new int[10];
        int[] data = new int[10];
        
        for(int i=0; i<10; i++){
            System.out.printf("Masukkan nilai Mahasiswa%d: ",i);
            genapGanjil[i] = inputUser.nextInt();
            
            data[i] = genapGanjil[i] % 2;
        }
        
        for(int i=0; i<10; i++){
            if(data[i] == 0){
                System.out.printf("Mahasiswa dengan nilai: %d adalah genap\n",genapGanjil[i]);
            }else{
                System.out.printf("Mahasiswa dengan nilai: %d adalah ganjil\n", genapGanjil[i]);
            }
        }
        inputUser.close();
    }
}
