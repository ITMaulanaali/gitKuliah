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
        window.add(createTable());
        
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
    
    public static JScrollPane createTable(){
        String[] colom = {"colom1", "colom2", "colom3","colom4"};
        String[][] baris = {
            {"baris1", "baris2", "baris3"},
            {"baris4", "baris5", "baris6"},
            {"baris7", "baris8", "baris9"},
        };
        DefaultTableModel modelDataTable = new DefaultTableModel(baris, colom);
        JTable table = new JTable(modelDataTable);
        
        JScrollPane scrolling = new JScrollPane(table);
        scrolling.setBounds(60,300,400,100);
        return scrolling;
    }
}
