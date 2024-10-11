import java.util.Scanner;
public class switchCase {
        public static void main(String[] args) {
            Scanner inputUser = new Scanner(System.in);
            day(inputUser);
            nilai(inputUser);
            inputUser.close();

    }

    public static void day(Scanner hari){

        System.out.print("Masukkan nilai hari function day(): ");
        String dayName;
        int day = hari.nextInt();
        switch (day) {
            case 1:
                dayName = "Senin";
                break;
            case 2:
                dayName = "Selasa";
                break;
            case 3:
                dayName = "Rabu";
                break;
            case 4:
                dayName = "Kamis";
                break;
            case 5:
                dayName = "Jumat";
                break;
            case 6:
                dayName = "Sabtu";
                break;
            case 7:
                dayName = "Minggu";
                break;
            default:
                dayName = "Hari tidak valid";
        }
         //inputUser.close();
    System.out.println("Hari: " + dayName);

    }

    public static void nilai(Scanner nilai){
        
        System.out.print("Masukkan nilai untuk switch case function nilai(): ");
        int ching = nilai.nextInt();
        switch(ching){
            case 1:
                System.out.println("nilai yang anda masukkan: 1");
                break;
            case 2:
                System.out.println("nilai yang anda masukkan: 2");
                break;
            case 3:
                System.out.println("nilai yang anda masukkan: 3");
                break;
            default:
                System.out.println("tidak ada nilai yang cocok");
        }
    }
}
    

