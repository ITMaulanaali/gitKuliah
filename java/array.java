public class array {
    
    public static void main(String[] args){

        //Inisialisasi array;
        int[] arrays = {1, 43, 40};
        arrays[1] = 820;
        System.out.println(arrays[1]);

        //Deklarasi array mirip constructor syntax tapi menggunakan type data
        String[] arrayString = new String[5]; //harus diberikan argument yang merujuk pada banyaknya koleksi data atau array
        arrayString[0] = "iya";
        System.out.println(arrayString[0]);
    }
}
