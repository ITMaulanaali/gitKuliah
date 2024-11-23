//Penerapan disaign pattern ini sesuai dengan namanya single yaitu pola untuk dapat membuat satu instance(object) yang dibuat dan bisa diakses secara global. Ini mencegah adanya membuat object berulang kali tapi hanya membuat satu object yang bisa digunakan banyak class lainnya
//Contoh penerapanya disini membuat object koneksi database yang nntinya digunakan untuk class form lain yang membutuhkan koneksi ke database tanpa harus membuat object koneksi lagi. Ini agar tidak selalu membuat koneksi berkali kali karena akan memakan biaya atau resource jaringan maupun sql

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class KoneksiSql {
    private static Connection koneksiUser;
    
    public static Connection melakukanKoneksiKeProgram_studi() throws SQLException, ClassNotFoundException{
        Class.forName("com.mysql.cj.jdbc.Driver");
            
        if(KoneksiSql.koneksiUser == null){
            KoneksiSql.koneksiUser = DriverManager.getConnection("jdbc:mysql://localhost/program_studi","coba","coba");
        }
        return KoneksiSql.koneksiUser;
    }
}
