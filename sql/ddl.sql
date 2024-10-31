--DATA DEFINITION LANGUAGE merupakan query yang digunakan untuk membuat table atau database. Untuk mendefinisikan database atau kolom-kolom yang ada
--ada 3 perintah DDL
--CREATE
--DROP
--ALTER

--JENIS - JENIS CONSTRAINT
  FOREIGN KEY
  --Behavior atau prilaku atau aturan pada reference foreign key
  --CASCADE. Ini mengizinkan kolom fk di table. Untuk ikut termanage/ubah/update jika tabel REFERENCES di tabel lain(primary key) di hapus atau diubah.
  --SET NULL. Mengizinkan table dengan kolom foreign key untuk meng set null data di kolom fk nya jika referensinya (kolom primary key di tabel lain) di update/hapus
  --SET DEFAULT. Mengizinkan table dengan kolom foreign key untuk meng set default nilai di kolomnya jika referensinya (kolom primary key di tabel lain) di update/hapus
  --RESTRICT. tidak Mengizinkan update/hapus nilai di kolomnreferensinya (kolom primary key di tabel lain yang dijadikan reference) jika masih ada atau ada referensi ke data di kolom tersebut
  --NO ACTION. 
  --Aturan dasar dalam membuat reference adalah type data harus benar-benar sama seperti unsigned pun harus sama perilakunya
  PRIMARY KEY
    

  UNIQUE
  
  --Tambahan perilaku setelah pengetikan type data
  NOT NULL --data di kolom tersebut tidak boleh kosong
  UNSIGNED --data di kolom tersebut tidak minus (-) (hanya untuk type data angka)

--Membuat table atau mengcreate database baru
CREATE DATABASE databasename;

--menghapus satu database dengan mengdrop / menjatuhkan:
DROP DATABASE databasename;



  
--Contoh dasar membuat table
CREATE TABLE nama_table1(
  id INT AUTO_INCREMENT PRIMARY KEY,
  nama VARCHAR(20) NOT NULL,
  umur INT UNSIGNED,
  golongan VARCHAR(2),
  jurusan VARCHAR(10) NOT NULL,
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

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- MELAKUKAN UPDATE PADA TABLE

-- Menambahkan kolom baru pada table yang ditimpa / alter
ALTER TABLE nama_table
  ADD nama_kolom VARCHAR(10)

-- Menghapus suatu kolom pada table yang ditimpa / alter
ALTER TABLE nama_table
  DROP column nama_kolom

-- Menambahkan PRIMARY KEY di suatu kolom pada table yang di ditimpa / alter
ALTER TABLE nama_table
  ADD CONSTRAINT pk_kolom --untuk constraint opsional
  PRIMARY KEY (nama_kolom_yang_ditambahkan_primay_key);

-- Menambaha Foreign Key di kolon pada table yang di timpa / alter
ALTER TABLE nama_table_mahasiswa)
  ADD CONSTRAINT nama_fk_ke_rujukan(dosen)_dengan_constraint_ini_maka_relasi_namaKolom_foreignKey_yang_ada_di_mahasiswa_nilainya_harus_sama_atau_ada_di_kolom_rujukan(dosen)_tidak_boleh_beda(unik) --nama constaint opsional
  FOREIGN KEY (nama_kolom_yang_ingin_dibuat_fk_di_table_ini(mahasiswa))
  REFERENCES nama_table_yang_dirujuk(dosen) (nama_kolom_primary_key_table_itu_yang_dirujuk)
  ON DELETE RESTRICT ON UPDATE RESTRICT);

