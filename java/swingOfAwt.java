import javax.swing.JFrame;

public class swingOfAwt {
    public static void main(){

        gui();
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
}
