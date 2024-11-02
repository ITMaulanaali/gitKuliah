--DML ada 3 yaitu:
--INSERT (untuk tambah ata record data ke database sql)
--UPDATE (untuk edit data)
--DELETE (untuk menghapus data atau record)

--Setiap proses DML ini by default akan berpengaruh pada satu blok baris. Itulah mengapa pastikan untuk memberikan paramater-parameter yabg spesifik agar tidak terjadi hal yang tidak diinginkan



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
--UPDATE

-- Mengganti atau mengupdate semua data di semua baris yang memiliki nama_kolom_umur menjadi 20
UPDATE nama_table SET nama_kolom_umur = 20;

-- Mengganti atau update hanya data di nama_kolom_umur menjadi 19 dan nama_kolom_nama menjadi ucik disemua baris yang memiliki nama_kolom_kehidupan = manusia(blablabla)
UPDATE nama_table
  SET nama_kolom_umur = 20, nama_kolom_nama = 'ucik'
  WHERE nama_kolom_kehidupan LIKE '%manusia%';

UPDATE nama_table
  SET nama_kolom_umur = 20, nama_kolom_nama = 'ucik'
  WHERE nama_kolom_id = 4; --hanya kolom dengan id=4

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--DELETE

-- Menghapus satu baris data dimana baris tersebut memiliki nama_kolom_id = 1 (satu data terhapus karena id key sifatnya unik)
DELETE FROM nama_table WHERE nama_kolom_id = 1;

-- Menghapus satu atau lebih baris data yang dibaris itu memiliki nama_kolom_jurusan = ti dan nama_kolom_nama terkandung nilai atau data ucik
DELETE FROM nama_table WHERE nama_kolom_jurusan = 'ti' AND nama_kolom_nama LIKE '%ucik%';

-- Menghapus semua data di nama_table, iya semua baris datanya hilang di nama_table akan tidak memiliki data sama sekali
DELETE FROM nama_table;

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


