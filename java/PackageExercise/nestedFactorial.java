package PackageExercise;

public class nestedFactorial {
    
    public static void main(String[] args){

        forNestedFactorial();
    }

    public static void forNestedFactorial(){
        //faktorial dari 4 adalah *
        //faktorial dari 5 adalah *
        //hinggal 15

        for(int loop = 4; loop <= 15; loop++){
            long factorial = 1;
            for(int kalikan = 1; kalikan <= loop; kalikan++){
                factorial *= kalikan;
            }
            System.out.println("nilai faktorial" + loop + " adalah " + factorial);
        }
    }
}
