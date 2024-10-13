package PackageExercise;

//kali ini akan membuat gui atau front end menggunakan swing.
import javax.swing.JFrame;
import javax.swing.JButton;
import javax.swing.JTextField;
import javax.swing.JLabel;
import javax.swing.JOptionPane;

public class guiGanjilGenap{
    
    public static void main(String[] args){
        //pemrograman berbbasis oop bermakna bahwa kita membungkun suatu object atau bagian bagian yang dikenai kerja atau ada kemungkinan untuk di kembangkan di masa depan
        //contoh dalam program cek genap ganjik dibawah ini ada object seperti button, label, text field yang dibungkus pada fuction(yang harusnya di class) kemudian semua function button akan memiliki kelakuan yang sama pada button atau fuctions sebelumnya
        //nah proses didasari pada bagian object mana yang akan di update atau dinamis atau diganti
        //prosses letak untuk ganti itu berada pada main seperti dibawah berikut:
        //ini membuat reference
        
        JButton tombolCheck = button("Cek", 100,250,100,50);
        JButton tombolHapus = button("Hapus", 250,250,100,50);
        JButton tombolKeluar = button("Keluar", 400,250,100,50);
        
        JLabel nilaiN = textLabel("Nilai N: ", 100,100,100,50); //jadi gpp juga sih memasukan class ke fungsi bukan main toh bisa di reference lagi. Pokoknya ini bergantung nalar kuat dan ingatan
        JLabel hasilCek = textLabel("Hasil Cek: ", 100,150,100,50);
        
        JTextField textNilaiN = textField(200,100,200,40);
        JTextField textHasilN = textField(200,150,200,40);
        
        // Mengatur aksi pada tombol "Cek"
        ganjilGenap(textNilaiN, textHasilN, tombolCheck);
        
        // aksi untuk tombol hapus
        tombolHapus(tombolHapus, textNilaiN, textHasilN);
        
        //aksi untuk tombol exit/keluar
        exit(tombolKeluar);
        
        //masukkan dan tampilkan semua konfigurasi component ke frame
        frame(tombolCheck, tombolHapus, tombolKeluar, nilaiN, hasilCek, textNilaiN, textHasilN, 600, 400);
        
    }
    
    public static void frame(JButton tombol1, JButton tombol2, JButton tombol3, JLabel label1, JLabel label2, JTextField text1, JTextField text2, int width, int height){
        //mengatur frame
        JFrame tampilkan = new JFrame();
        tampilkan.setSize(width, height);
        tampilkan.setLocationRelativeTo(null);
        tampilkan.setVisible(true);
        tampilkan.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        tampilkan.setLayout(null); //set layout atau tata letak aplikasi secara manual
        
        //mengatur button di frame
        tampilkan.add(tombol1);
        tampilkan.add(tombol2);
        tampilkan.add(tombol3);
        tampilkan.add(label1);
        tampilkan.add(label2);
        tampilkan.add(text1);
        tampilkan.add(text2);
        
//        tombol1.addActionListener(e -> {
//            ganjilGenap(textNilaiN, textHasilN);  Jadi problemku adalah bagaimana bisa menjalankan fungsi ini tapi di function frame bukan main agar rapi
//        });
    }
    
    public static JLabel textLabel(String textName, int x, int y, int panjang, int lebar){
        JLabel label = new JLabel(textName);
        label.setBounds(x,y,panjang,lebar);
        return label;
        
    }
    
    public static JTextField textField(int x, int y, int panjang, int lebar){
        JTextField textInput = new JTextField();
        textInput.setBounds(x,y,panjang,lebar);
        textInput.getText();
        return textInput;
    }
    
    public static JButton button(String buttonName, int x, int y, int panjang, int lebar){
        JButton tombolKita = new JButton(buttonName);
        tombolKita.setBounds(x,y,panjang,lebar);
        return tombolKita;
        
    }
    
    public static void ganjilGenap(JTextField angka, JTextField textHasilN, JButton aksi){
        aksi.addActionListener(e -> {
        String inputText = angka.getText();
        try {
                int nilaiNValue = Integer.parseInt(inputText);
                // Logika untuk memeriksa genap atau ganjil
                if (nilaiNValue % 2 == 0) {
                    textHasilN.setText("genap");
                } else {
                    textHasilN.setText("ganjil");
                }
            } catch (NumberFormatException ex) {
                JOptionPane.showMessageDialog(null, "Masukkan angka yang valid!", "Error", JOptionPane.ERROR_MESSAGE);
            }
        });
    }
    
    public static void tombolHapus(JButton aksi, JTextField nilaiN, JTextField nilaiHasil){
        aksi.addActionListener(e ->{
            nilaiN.setText("");
            nilaiHasil.setText("");
        });
    }
    
    public static void exit(JButton tombolKeluar){
        tombolKeluar.addActionListener(e -> {
            System.exit(0);
        });
    }
    
}