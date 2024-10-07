public class unaryOperator {

    public static void main(String[] args){

        int angka = 1;
        System.out.printf("unary '+', %d menjadi %d\n", angka, +angka); //apaun hasilnya selalu positif
        System.out.printf("unary '-', %d menjadi %d\n", angka, -angka); //apapun hasilnya selalu negatif

        int angka2 = 2;
        angka2++; //unary menjumlahkan 1
        System.out.println("unary "+ angka2);

        int angka3 = 2;
        angka3--; //unary mengurangkan 1
        System.out.println("unary "+ angka3);

        boolean logika = true;
        System.out.println("unary \n"+ !logika); //unary not

    }
}

//unary operator adalah operasi hanya untuk satu variable saja
