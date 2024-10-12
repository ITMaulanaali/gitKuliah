import java.util.Scanner;
public class array {
    
    public static void main(String[] args){

        // coutLoopingArrayFor();
        // inputArrayWithScanner();
        menampilkanForDuaDimensiArray();
    }

    public static void coutLoopingArrayFor(){
        int[] contohArray = {4,3,3,70};

        for(int i=0; i<4; i++){
            System.out.printf("Menampilan nilai arrary dari index %d nilai: %d\n", i, contohArray[i]);
        }
    }

    public static void inputArrayWithScanner(){
        Scanner inputUser = new Scanner(System.in);

        int[] contohArray = new int[10];
        int y = 0;

        for(int i = 0; i<contohArray.length; i++){
            System.out.printf("Masukkan nilai di index %d: ", i);
            contohArray[i] = inputUser.nextInt();
            
            while(i==9){
                System.out.printf("index %d bernilai: %d\n", y, contohArray[y]);
                y++;
                if(y == 10){
                    break;
                }
            }
        }
        inputUser.close();
    }

    public static void menampilkanForDuaDimensiArray(){
        int[][] angkaArray2 = {
            {5,4,1,2,5},
            {9,6,5,7,8},
            {5,2,1,5,10}
        };
        
        for(int baris=0; baris<3; baris++){
            for(int kolom=0; kolom<5; kolom++){ //kolom akan diinisialisasi lagi ke 0 untuk perulangan keduakalinya ketika habis;
                System.out.print(angkaArray2[baris][kolom]);
            }
            System.out.print("\n");
        }
        
    }

}
