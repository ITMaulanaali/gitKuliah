package PackageExercise.guiProject;

import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JTextField;
import javax.swing.JTextArea;
import javax.swing.JScrollPane;
import javax.swing.JComboBox;
import javax.swing.JRadioButton;
import javax.swing.ButtonGroup;
import javax.swing.JButton;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;
import java.util.ArrayList; //pahami lagi tentang penggunaan arrayList karena ini tidak jadi kugunakan pada project ini

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class projectSqlGui {
    public static void main(String[] args){
        JFrame window = createWindow();
        
        //add component
        window.add(createLabel("Aplikasi tampilan Database SQL", (short)150, (short)10, (short)250, (short)20));
        window.add(createLabel("NPM:", (short)40, (short)70, (short)50, (short)20));
        window.add(createLabel("Nama Mahasiswa:", (short)40, (short)100, (short)150, (short)20));
        window.add(createLabel("Jurusan:", (short)40, (short)130, (short)100, (short)20));
        window.add(createLabel("Jenis Kelamin:", (short)40, (short)160, (short)100, (short)20));
        window.add(createTextField((short)180, (short)70, (short)200, (short)20));
        window.add(createTextField((short)180, (short)100, (short)200, (short)20));
        window.add(createComboBox());

        JRadioButton lakiLaki = createRadioButton("Laki-Laki", 180, 160, 200, 20);
        JRadioButton perempuan = createRadioButton("Perempuan", 180, 180, 200, 20);
        
        ButtonGroup group = new ButtonGroup();
        group.add(lakiLaki);
        group.add(perempuan);
        
        window.add(lakiLaki);
        window.add(perempuan);
        window.add(createLabel("Alamat:", (short)40, (short)220, (short)200, (short)20));
        
        //ini benar dengan melakukan reference. Karena jika hasil pembuatan objek dari function yang dipanggil berulang
        //akan menghasilkan object lain dengan alamat berbeda meskipun nilainya sama. Sehingga pasti jika dipanggil 2 kali
        //dia hanya di tambahkan ke window.add saja atau hanya di tambahkan group.add saja tiap objectnya
        //dengan reference alamat object atau object itus sendiri sama.
        
        JScrollPane scrolling = new JScrollPane(createTextArea());
        scrolling.setBounds(180, 220, 200, 40);
        
        window.add(scrolling);
        window.add(createButton("add", 60, 270, 80, 20));
        window.add(createButton("save", 140, 270, 80, 20));
        window.add(createButton("find", 220, 270, 80, 20));
        window.add(createButton("delete", 300, 270, 80, 20));
        window.add(createButton("exit", 380, 270, 80, 20));
        
        Object[] colomDanBaris = mysql(); //pahami lagi tentang object. Ini dapat seolah inheritance dengan memindahkan banyak data dari fungsi lain ke array yang disimpan pada object. Kemudian bisa di assigne ke fungsi lainnya
        String[] colom = (String[])colomDanBaris[0];
        String[][] baris = (String[][])colomDanBaris[1];
        window.add(createTable(colom, baris));
        
        
        window.setVisible(true);
    }
    
    public static JFrame createWindow(){
        //Frame or window configuration
        JFrame window = new JFrame();
        window.setSize(500,450);
        window.setLocationRelativeTo(null);
        window.setLayout(null);
        window.setTitle("Program Tampilkan SQL");
        
        //close with exit button in top right corner
        window.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        return window;
    }
    
    public static JLabel createLabel(String judul, short x, short y, short height, short wide){
        JLabel labelAplikasi = new JLabel(judul);
        labelAplikasi.setBounds(x,y,height,wide);
        return labelAplikasi;
    }
    
    public static JTextField createTextField(short x, short y, short wide, short height){
        JTextField textObjek = new JTextField();
        textObjek.setBounds(x, y, wide, height);
        textObjek.getText();
        return textObjek;
    }
    
    public static JComboBox createComboBox(){
        String[] items = {"Sistem Informasi", "Management", "Komunikasi", "Akuntansi"};
        JComboBox combjur = new JComboBox(items);
        combjur.setBounds(180, 130, 200, 20);
        return combjur;
    }
    
    public static JRadioButton createRadioButton(String gender, int x, int y, int wide, int height){
        JRadioButton button = new JRadioButton(gender);
        button.setBounds(x, y, wide, height);
        return button;
    }
    
    public static JTextArea createTextArea(){
        JTextArea area = new JTextArea();
        area.setLineWrap(true); //baris auto pindah kebawah
        area.setWrapStyleWord(true); //huruf yang pindah perkata
        return area;
    }
    
    public static JButton createButton(String nama, int x, int y, int height, int wide){
        JButton button = new JButton(nama);
        button.setBounds(x, y, height, wide);
        return button;
    }
    
    public static JScrollPane createTable(String[] colom, String[][] baris){
        DefaultTableModel modelDataTable = new DefaultTableModel(baris, colom);
        JTable table = new JTable(modelDataTable);
        
        JScrollPane scrolling = new JScrollPane(table);
        scrolling.setBounds(60,300,400,100);
        return scrolling;
    }
    
    public static Object[] mysql(){
        String userName, password, url, query;
        userName = "admin";
        password = "ikanikan";
        url = "jdbc:mysql://localhost:3306/dbperkuliahan";
        query = "SELECT * FROM tabmahasiswa";
        
        String[] colom = {"npm","nama","jurusan","jeniskelamin","alamat"};
        String[][] baris = new String[100][5];
        
        try{
        Class.forName("com.mysql.cj.jdbc.Driver"); //pahami tentang file .jar yang dibutuhkan untuk membuat driver
        Connection connect = DriverManager.getConnection(url, userName, password);
        Statement syntaxSql = connect.createStatement();
        ResultSet hasil = syntaxSql.executeQuery(query);
        int i = 0;
        while(hasil.next()){
            
            baris[i][0] = hasil.getString("npm");
            baris[i][1] = hasil.getString("nama");
            baris[i][2] = hasil.getString("jurusan");
            baris[i][3] = hasil.getString("jeniskelamin");
            baris[i][4] = hasil.getString("alamat");
            System.out.println("Data: " + baris[i][1]);
            i++;
        }
        connect.close();
        syntaxSql.close();
        hasil.close();
        }catch(SQLException e){
            System.out.printf("error %s",e);
        }catch(ClassNotFoundException e){
            System.out.printf("error %s",e);
        }
        
        Object[] barisDanColom = {colom,baris};
        return barisDanColom;
        
    }
}
