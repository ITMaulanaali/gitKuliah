--DML ada 3 yaitu:
--INSERT (untuk tambah ata record data ke database sql)
--UPDATE (untuk edit data)
--DELETE (untuk menghapus data atau record)


--Contoh menambah data ke tabel yang memiliki 5 kolom dan mengisi semua kolomnya bisa langsung masukan valuesnya apa:
INSERT INTO nama_table VALUES(
  18,'iya','sekarang kita',2,'mungkin');

--Contoh menambah data ke tabel yang memiliki 5 kolom dan ingin mengisi 2 baris sekaligus atau lebih:
INSERT INTO nama_table VALUES
  (18,'iya','sekarang kita',2,'mungkin'),
  (19,'tidak','nanti','saya',10,'pasti');

--Contoh menambah data ke tabel yang memiliki 5 kolom dan hanya ingin memasukan data di 3 kolom saja:
INSERT INTO nama_table(
  kolomInt,kolomVarchar,kolomText)VALUES(
  17,'halo','aku manusia kuat');

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
