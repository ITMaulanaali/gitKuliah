import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JTextField;

public class swingOfAwt {
    public static void main(String[] args){

        // gui();
        // membuatFrameBasic();
    }

    public static void gui(){
        //membuat object jendela
        JFrame gui = new JFrame();
        
        //menentukan besaran Frame
        gui.setSize(400,200);
        
        //memberikan judul pada jendela
        gui.setTitle("Ini aplikasi biasa");
        
        //by default frame/aplikasi hide sehingga perlu di kondisikan true untuk aktif
        gui.setVisible(true);

        
    }

    public static void membuatFrameBasic(){
        //Program ini hanya front end alias tidak ada event handler sama sekali kecuali close dan maximze
        
        //membuat object jendela
        JFrame gui = new JFrame();
        
        //menentukan besaran Frame
        gui.setSize(400,200);
        
        //memberikan judul pada jendela
        gui.setTitle("Ini aplikasi biasa");
        
        //membuat frame berada di tengah
        gui.setLocationRelativeTo(null);
        
        //mengaktifkan event yang berfungsi untuk api close ketika di tekan frame hilang
        gui.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        
        //menonaktifkan button/event maximize di frame
        gui.setResizable(false);
        
        //by default frame/aplikasi hide sehingga perlu di kondisikan true untuk aktif
        gui.setVisible(true);
        
        //membuat object Jlabel
        JLabel label = new JLabel("masukkan nim: ");
        
        //memnentukan layout frame
        gui.setLayout(null);
        
        //memasukkan label kedalam frame
        gui.add(label);
        
        //menentukan posisi label didalam frame
        label.setBounds(20,20,150,30);
        
        //membuat object TextField
        JTextField textField = new JTextField();
        
        //memasukkan textField kedalam frame
        gui.add(textField);
        
        //menentukan posisi textField didalam frame
        textField.setBounds(150,20,230,30);
        
        //membuat object button
        JButton button = new JButton("simpan");
        
        //memasukkan button kedalam frame
        gui.add(button);
        
        //menentukan posisi button kedalam frame
        button.setBounds(120,60,89,20);
           
    }
}
