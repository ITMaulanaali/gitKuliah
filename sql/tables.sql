--membuat suatu table di dalam database
CREATE TABLE nama_tabel (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nama VARCHAR(100),
    umur INT,
    alamat TEXT
) ENGINE = InnoDB;

--melihat semua table yang telah dibuat
SHOW TABLES;

--melihat semua kolom dan DDLnya/spesifikasi kolomnya
desc tabmahasiswa

--mengambil(get) atau menampilkan semua data di kolom tabel
SELECT * FROM tabel
