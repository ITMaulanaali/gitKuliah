import java.util.Scanner;
public class ifelseif{

    public static void main(String[] args){

        Scanner inputUser = new Scanner(System.in);

        int a = inputUser.nextInt();

        if(/*expresion*/ a==5){

            System.out.println("a itu 5");
        }else if(a == 6){

            System.out.println("input a itu 6");
        }else{

            System.out.println("tidak ada");
        }
    }
}