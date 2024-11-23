
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class KoneksiSql {
    private static Connection koneksiUser;
    
    //localhost, umkm, userName, password
    public static Connection melakukanKoneksiKeProgram_studi() throws SQLException, ClassNotFoundException{
        Class.forName("com.mysql.cj.jdbc.Driver");
            
        if(KoneksiSql.koneksiUser == null){
            KoneksiSql.koneksiUser = DriverManager.getConnection("jdbc:mysql://localhost/program_studi","coba","coba");
        }
        return KoneksiSql.koneksiUser;
    }
}
