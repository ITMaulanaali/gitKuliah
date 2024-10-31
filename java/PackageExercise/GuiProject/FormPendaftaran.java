/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package PackageExercise.GuiProject;

/**
 *
 * @author kampus4psdku
 */

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
import java.awt.Checkbox;
import java.awt.event.ItemEvent;
import javax.swing.JDialog;
import javax.swing.JOptionPane;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class FormPendaftaran {
    
    private static JTextField fieldNim = createTextField((short)180, (short)70, (short)200, (short)20);
    private static JTextField fieldNama = createTextField((short)180, (short)100, (short)200, (short)20);
    private static JRadioButton lakiLaki = createRadioButton("Laki-Laki", 180, 130, 100, 20);
    public static  JRadioButton perempuan = createRadioButton("Perempuan", 280, 130, 200, 20);
    private static JComboBox hobi = createComboBox();
    private static Checkbox ceklist = createBox((short)220, (short)190, (short)50, (short)20);
    private static JButton process = createButton("Process",(short)300, (short)250, (short)100, (short)20);
    private static JDialog popUp = createDialog();
    
    public static void main(String[] args){
        JFrame window = createWindow();
        
        //add component
        window.add(createLabel("Aplikasi Form Untuk Pedaftaran", (short)150, (short)10, (short)250, (short)20));
        window.add(createLabel("NIM:",                           (short)40, (short)70, (short)50, (short)20));
        window.add(createLabel("Nama Mahasiswa:",                (short)40, (short)100, (short)150, (short)20));
        window.add(createLabel("Jenis Kelamin:",                 (short)40, (short)130, (short)100, (short)20));
        window.add(createLabel("Hobi:",                          (short)40, (short)160, (short)100, (short)20));
        window.add(createLabel("Apakah pernah mendaftar?",       (short)40, (short)190, (short)170, (short)20));
        
        window.add(fieldNim);
        window.add(fieldNama);
        window.add(hobi);
        window.add(ceklist);

        ButtonGroup group = new ButtonGroup();
        group.add(lakiLaki);
        group.add(perempuan);
        window.add(lakiLaki);
        window.add(perempuan);
        
        window.add(process);
        event(popUp);
        
        
        
        window.setVisible(true);
    }
    
    public static JFrame createWindow(){
        //Frame or window configuration
        JFrame window = new JFrame();
        window.setSize(500,450);
        window.setLocationRelativeTo(null);
        window.setLayout(null);
        window.setTitle("Form Pendaftaran");
        
        //close with exit button in top right corner
        window.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        return window;
    }
    
    public static JLabel createLabel(String judul, short x, short y, short height, short wide){
        JLabel labelAplikasi = new JLabel(judul);
        labelAplikasi.setBounds(x,y,height,wide);
        return labelAplikasi;
    }
    
    public static JTextField createTextField(short x, short y, short wide, short height){ //kebalik wide dan height
        JTextField textObjek = new JTextField();
        textObjek.setBounds(x, y, wide, height);
        textObjek.getText();
        return textObjek;
    }
    
    public static JComboBox createComboBox(){
        String[] items = {"Bernyanyi", "Bermain Gitar", "Membuat Lagu", "Mencintaimu"};
        JComboBox combjur = new JComboBox(items);
        combjur.setBounds(180, 160, 200, 20);
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
    
    public static Checkbox createBox(short x, short y, short height, short wide){
        Checkbox checkBox = new Checkbox();
        checkBox.setBounds(x, y, height, wide);
        return checkBox;
    }
    
    public static JDialog createDialog(){
        JDialog dialog = new JDialog();
        dialog.setSize(200, 200);
        dialog.setLocationRelativeTo(null);
        dialog.setLayout(null);
        dialog.setTitle("Form Pendaftaran");
        dialog.setDefaultCloseOperation(JDialog.DISPOSE_ON_CLOSE); // Good practice
        return dialog;
    }
    
     public static void event(JDialog popup){
        String[] textNama = {fieldNama.getText()};
        String[] textNim = {fieldNim.getText()};
        String[] radioButtonLaki = new String[0];
        String[] radioButtonPerempuan = new String[0];
        String[] dataComboBox = new String[0];
        String[] dataCeklist = new String[0];
        
        lakiLaki.addActionListener(e -> {
        radioButtonLaki[0] = "Laki-Laki";
        });
        
        perempuan.addActionListener(e -> {
        radioButtonPerempuan[0] = "Perempuan";
        });
        
        hobi.addActionListener(e -> {
        dataComboBox[0] = (String) hobi.getSelectedItem();
        });
        
          ceklist.addItemListener(e -> {
            if (e.getStateChange() == ItemEvent.SELECTED) {
                dataCeklist[0] = "Sudah";
            } else {
                dataCeklist[0] = "belum";
            }
        });
          
        process.addActionListener(e -> {
        
                popup.setVisible(true);
                JOptionPane.showMessageDialog(null, "Masukkan angka yang valid!", "Error", JOptionPane.ERROR_MESSAGE);
            
        });
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
