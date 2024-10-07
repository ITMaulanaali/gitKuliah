public class OperatorLogika{

    public static void main(String[] args){

        boolean a = false;
        boolean b = false;
        boolean c = (a||b);
        System.out.println(a + " || " + b + " = " + c);
        c = (a && b);
        System.out.println(a + " && " + b + " = " + c);
        c = (a ^ b);
        System.out.println(a + " ^ " + b + " = " + c);
        a = true;
        c = !a;

    }
}