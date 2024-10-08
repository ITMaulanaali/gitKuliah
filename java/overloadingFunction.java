public class overloadingFunction {

    public static void main(String[] args){

        data(4);
        data(4.5f);
        data('y'); //secara otomatis akan mencari fungsi dengan parameter yang sesuai dengan argument data type yang digunakan
    }

    private static void data(int angkaInt){

        System.out.println(angkaInt);
    }

    private static void data(float angkaFloat){

        System.out.println(angkaFloat);
    }

    private static void data(char huruf){

        System.out.println(huruf);
    }
}
