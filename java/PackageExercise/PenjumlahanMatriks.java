package PackageExercise;

import java.util.Scanner;

class PenjumlahanMatriks{ //class induk
    
    //membuat nilai dari matriks(array 2 dimensi a dan array 2 dimensi b)
    //kemudian hasil dari penjumlahan array 2 dimensi itu di masukkan ke array 2 dimensi C
    
    
    public static void main(String[] args){
        
    int[][] arrayA = {
        {3,5},
        {7,8}};
    int[][] arrayB = {
        {1,1},
        {2,2}};
    int[][] arrayC = new int[2][2]; //ada 2 baris dan kolom dengan index dimulai dari 0
        
        for(int i=0; i<=1; i++){
            for(int j=0; j<=1; j++){
                arrayC[i][j] = arrayA[i][j] + arrayB[i][j];
            }
            
        }
        System.out.printf("baris0kolom0: %d. baris0kolom2: %d\nBaris1kolom0: %d. Baris1kolom1: %d", arrayC[0][0], arrayC[0][1], arrayC[1][0], arrayC[1][1]);
    }
    
}
