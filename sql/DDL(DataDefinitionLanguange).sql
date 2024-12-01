--DATA DEFINITION LANGUAGE merupakan query yang digunakan untuk membuat table atau database. Untuk mendefinisikan database atau kolom-kolom yang ada
--ada 3 perintah DDL
--CREATE
--DROP
--ALTER

--JENIS - JENIS CONSTRAINT
  PRIMARY KEY
  FOREIGN KEY
  --Behavior atau prilaku atau aturan pada reference foreign key
  --CASCADE. Ini mengizinkan kolom fk di table. Untuk ikut termanage/ubah/update jika tabel REFERENCES di tabel lain(primary key) di hapus atau diubah.
  --SET NULL. Mengizinkan table dengan kolom foreign key untuk meng set null data di kolom fk nya jika referensinya (kolom primary key di tabel lain) di update/hapus
  --SET DEFAULT. Mengizinkan table dengan kolom foreign key untuk meng set default nilai di kolomnya jika referensinya (kolom primary key di tabel lain) di update/hapus
  --RESTRICT. tidak Mengizinkan update/hapus nilai di kolomnreferensinya (kolom primary key di tabel lain yang dijadikan reference) jika masih ada atau ada referensi ke data di kolom tersebut
  --NO ACTION. 
  --Aturan dasar dalam membuat reference adalah type data harus benar-benar sama seperti unsigned pun harus sama perilakunya
  UNIQUE KEY

    
  
  --Tambahan perilaku setelah pengetikan type data
  NOT NULL --data di kolom tersebut tidak boleh kosong
  UNSIGNED --data di kolom tersebut tidak minus (-) (hanya untuk type data angka)
  DEFAULT  --data di kolom tersebut memiliki nilai default bila tidak di isi


---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Melakukan DDL Database

--Membuat table atau mengcreate database baru
CREATE DATABASE databasename;

--menghapus satu database dengan mengdrop / menjatuhkan:
DROP DATABASE databasename;

-- Menghapus sebuah database
DROP DATABASE nama_database;

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------  
--Contoh dasar membuat table
CREATE TABLE nama_table1(
  id INT AUTO_INCREMENT PRIMARY KEY,
  nama VARCHAR(20) NOT NULL,
  umur INT UNSIGNED,
  golongan VARCHAR(2),
  jurusan VARCHAR(10) NOT NULL DEFAULT 'it',
  alamat TEXT
  ) ENGINE = InnoDB;

--membuat table berelasi ke nama_table1
CREATE TABLE nama_table2(
  id INT AUTO_INCREMENT PRIMARY KEY,
  nama VARCHAR(20) NOT NULL,
  umur INT UNSIGNED,
  golongan VARCHAR(2),
  jurusan VARCHAR(10) NOT NULL,
  alamat TEXT,
  fk_nama_table1 INT,
  CONSTRAINT fk_to_nama_table1 FOREIGN KEY(fk_nama_table1) REFERENCES nama_table(id) ON DELETE CASCADE ON UPDATE CASCADE 
  ) ENGINE = InnoDB;

---------
--Membuat constraint kolom yang uniq
CREATE TABLE nama_table2(
  id INT AUTO_INCREMENT PRIMARY KEY,
  nama VARCHAR(20) NOT NULL,
  umur INT UNSIGNED,
  golongan VARCHAR(2),
  jurusan VARCHAR(10) NOT NULL,
  alamat TEXT,
  email VARCHAR(30),
  UNIQUE KEY nama_constraint (nama_kolom_yang_dijadikan_unique_atau_email)
  ) ENGINE = InnoDB;

---------------------
CREATE VIEW nama_view AS
  --query dql yang ingin ditampilkan kolom atau nilai tertentu atau pintasan dari table lain ke table view
  SELECT hanya_nama_kolom1, just_nama_kolom2 FROM nama_table
  WHERE --kondisi yang diinginkan pada tampilan data di table view;

-- Menghapus table hingga semua baris datanya bersihhh
DROP TABLE nama_table;

-- Merubah nama table
RENAME TABLE nama_table_lama TO nama_table_baru;

-- Menghapus semua baris atau data yang ada di table (konsep dari TRUNCATE sebenarnya menghapus seluruh table dan membuatya lagi. Ini menyebabkan reset ulang) Untuk perintah turncate tidak akan dimasukan ke log sehingga perubahan dengan truncate(hapus) tidak akan bisa dikembalikan lagi. Namun bila ia meiliki reference yang diset RESTRICT tentu ini error
TRUNCATE TABLE nama_table;


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- MELAKUKAN UPDATE PADA KOLOM

-- Menambahkan CONSTRAINT PRIMARY KEY di suatu kolom pada table yang di ditimpa / alter
ALTER TABLE nama_table
  ADD CONSTRAINT pk_kolom --untuk constraint opsional
  PRIMARY KEY (nama_kolom_yang_ditambahkan_primay_key); --bisa menambah primary key di multiple colom dengan , nama_kolom

-- Menambahkan CONSTRAINT FOREIGN KEY di kolon pada table yang di timpa / alter
ALTER TABLE nama_table_mahasiswa)
  ADD CONSTRAINT nama_fk_ke_rujukan(dosen)_dengan_constraint_ini_maka_relasi_namaKolom_foreignKey_yang_ada_di_mahasiswa_nilainya_harus_sama_atau_ada_di_kolom_rujukan(dosen)_tidak_boleh_beda(unik) --nama constaint opsional
  FOREIGN KEY (nama_kolom_yang_ingin_dibuat_fk_di_table_ini(mahasiswa))
  REFERENCES nama_table_yang_dirujuk(dosen) (nama_kolom_primary_key_table_itu_yang_dirujuk)
  ON DELETE RESTRICT ON UPDATE RESTRICT);

-- Menambahkan CONSTRAINT UNIQUE KEY
ALTER TABLE nama_table
  ADD CONSTRAINT nama_constraint UNIQUE (nama_kolom_yang_ingin_nilainya_dijadikan_unik);

-- Menambahkan atau update CONSTRAINT CHECK CONSTRAINT untuk memastikan data itu adalah dengan perbandingan
ALTER TABLE nama_table
  ADD CONSTRAINT cek_nilai_diatas_10 CHECK (nama_kolom_yang_ingin_nilainya_diatas_10);
ALTER TABLE nama_table
  ADD CHECK(nama_kolom_yang_dicek_nilainya_harus_diatas_10); --tanpa menuliskan constraint maka nama constraint akan default

-- Membuat suatu kolom menjadi index untuk mempercepat pencarian karena menggunakan algoritma B-TREE
ALTER TABLE nama_table
  ADD INDEX nama_indexsnya(nama_kolom_yang_dijadikan_berindex1, nama_kolom2, nama_kolom3); --atau buat satu kolom satu index dan ini lebih disarankan
  ADD INDEX nama_index1(nama_kolom1);
  ADD INDEX nama_index2(nama_kolom2);

-- Membuat pencarian menggunakan index dengan FULLTEXT. Pada dasarnya pencarian LIKE tidak menggunakan pencarian dengan index sehingga akan mencari semua kolom dari baris alih-alih hanya mencari di blok kolom yang di select
ALTER TABLE nama_table
  ADD FULLTEXT nama_fullText(nama_kolom1, nama_kolom2);

-- Menghapus hanya constraint nya saja pada suatu table
ALTER TABLE nama_table
  DROP CONSTRAINT nama_constraintnya;

-- Menambahkan kolom baru pada table yang ditimpa / alter
ALTER TABLE nama_table
  ADD COLUMN nama_kolom VARCHAR(10);

-- Menghapus suatu kolom pada table yang ditimpa / alter
ALTER TABLE nama_table
  DROP COLUMN nama_kolom;

-- Merubah object(kolom) perubahan ini tidak terbatas pada nama tapi bisa juga type data di kolom dari table yang di alter
ALTER TABLE nama_table
  CHANGE nama_kolom_lama nama_kolom_baru VARCHAR(100);

-- Menganti hanya type data nya saja di nama_kolom dan menaruh kolomnya setelah nama_kolom_3 sehingga nama_kolom berada di posisi4 pada table atau di paling atas
ALTER TABLE nama_table
  MODIFY nama_kolom ENUM('makanan', 'minuman') AFTER nama_kolom3;
ALTER TABLE nama_table
  MODIFY nama_kolom VARCHAR(200) FIRST;

-- Menambahkan aturan NOT NULL pada kolom dan AUTO_INCREMENT
ALTER TABLE nama_table
  MODIFY nama_kolom int AUTO_INCREMENT NOT NULL;

-- Menambahkan colom di table dengan type data waktu / timestamp yang tidak boleh kosong dan default datanya adalah waktu saat baris data dibuat
ALTER TABLE nama_table
  ADD COLUMN nama_kolom_waktu TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP;

-- Menambahkan auto mengisi data tanggal dan waktu (harus tipe data datetime/timestamp)
ALTER TABLE nama_table
  ADD COLUMN nama_kolom_DATETIME DEFAULT CURRENT_TIMESTAMP;


