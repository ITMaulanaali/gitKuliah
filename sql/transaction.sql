--Pada transaction tidak bisa digunakan untuk query DDL hanya DML
--Hati hati terhadapat DEADLOCK atau antara query satu dengan query lainnya saling menunggu

START TRANSACTION;

--masukkan berbagai query DML

COMMIT; -- untuk melanjutkan simpan ke mysql
ROLLBACK; -- syntax mungkin salah untuk mengembalikan jika satu query gagal di eksekusi

--Contoh penggunaan

START TRANSACTION; --seseorang akan di hold bila melakukan update ke table sedangkan tabel disini masih di belum dicommit

INSERT INTO nama_tabel(nama_kolom2) VALUES('ikan');

COMMIT; --ketika dicomiit maka hasil query akan diteruskan ke server mysql dan device lain yang sedang mau update ke nama_tabel akan dibolehkan(antrian selanjutnya)
--lakukan ROLLBACK apabila ternyata sebelum commit hasil query ini tidak jadi atau salah sehingga object rekaman yang dihasilkan di kembalikan lagi(dalam arti kembali kesebelumnya)

-------------------------------------------------------------
START TRANSACTION;

--pada penggunaan transaction itu dikhususkan untuk manipulasi DATA (DML) sehingga jika querynya itu bukan DML maka dia tidak akan menerapkan LOCKING sehingga akses query dari device/file tidak akan dihold. Untuk membuat query tampilkan ini bisa berperilaku LOCKING juga maka gunakan FOR UPDATE
SELECT * FROM nama_tabel WHERE nama_kolom = 'halo' FOR UPDATE;

COMMIT

-------------------------------------------------------------
--Locking Table

LOCK TABLES nama_tabel READ; --artinya user lain hanya bisa read di table tersebut tapi tidak bisa atau hold DML

--query untuk write juga tidak bisa disini hanya bisa read

UNLOCK TABLES;



LOCK TABLES nama_tabel WRITE; -- artinya user lain tidak bisa read ataupun write

--Query disini bisa read dan write juga

UNLOCK TABLES;

--------------------------------------------------
--LOCK INSTANCE

LOCK INSTANCE FOR BACKUP; --biasanya digunakan ketika ingin Backup database supaya tidak ada yang mengedit struktur table apapun dengan (DDL) ketika melakukan backup database

UNLOCK INSTANCE;
