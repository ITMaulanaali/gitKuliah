import java.util.Scanner;

public class ifelseif {


    public static void main(String[] args) {
        jika();
        jikaSalah();
        salahJika();
    }
    
    public static void jika(){
        Scanner userInput = new Scanner(System.in);
        System.out.print("masukkan nilai: ");
        int nilai = userInput.nextInt();
        
        if(nilai > 70){ //eskpression
            System.out.println("anda lulus");
        }
        userInput.close();
    }
    
    public static void jikaSalah(){
        Scanner userInput = new Scanner(System.in);
        System.out.print("masukkan nilai: ");
        int nilai = userInput.nextInt();
        
        if(nilai > 70){
            System.out.println("anda lulus");
        }else{
            System.out.println("maaf anda tidak lulus");
        }
        userInput.close();
    }
    
    public static void salahJika(){
        Scanner userInput = new Scanner(System.in);
        System.out.print("Masukkan nilaimu: ");
        int nilai = userInput.nextInt();
        
        if(nilai > 70){
            System.out.println("selamat anda lulus");
        }else if(nilai > 40 && nilai < 70){
            System.out.println("coba test lagi");
        }else{
            System.out.print("kamu tidak lulus nilai dibawah 40");
        }
        userInput.close();
    }
    
}
