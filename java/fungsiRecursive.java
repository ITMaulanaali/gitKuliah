public class fungsiRecursive {
    
    public static void main(String[] args){
        fibonacci(5);
        System.out.println(fibonacci(5));
    }

    private static int fibonacci(int a){
        if(a == 0){
            return a;
        }
        return a + fibonacci(a - 1);
    }
}
