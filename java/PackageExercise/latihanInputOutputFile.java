package PackageExercise;
import java.io.FileInputStream;
import java.io.IOException;

public class latihanInputOutputFile {
    
    public static void main(String[] args) throws IOException{

        // try{
        //     FileInputStream fileInput = new FileInputStream("input.txt");
        // }catch(Exception e){
        //     System.err.println(e);
        // }finally{
        //     if(fileInput != null){
        //         try{
        //             fileInput.close();
        //         }catch(IOException e){
        //             System.out.println("maaf ada error berikut: %s", e);
        //         }
        //     }
        // }

        FileInputStream fileInput = new FileInputStream("PackageExercise/input.txt"); //terdeteksi lokasi di folder java
        System.out.println((char)fileInput.read());
        fileInput.close();
        
    }
}
