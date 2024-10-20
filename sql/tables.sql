--membuat suatu table di dalam database
CREATE TABLE nama_tabel (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nama VARCHAR(100),
    umur INT,
    alamat TEXT
) ENGINE = InnoDB;

--mengubah suatu table
ALTER TABLE nama_tabel
	ADD COLUMN nama_kolom TEXT,
	DROP COLUMN nama_kolom,
	RENAME COLUMN nama_kolom_saat_ini TO nama_kolom_baru,
	MODIFY nama_kolom VARCHAR(100) AFTER nama_kolom_beforenya,
	MODIFY nama_kolom VARCHAR(100) FIRST;

--melihat semua table yang telah dibuat
SHOW TABLES;

--melihat query untuk membuat tabel yang mirip seperti ini
SHOW CREATE TABLE nama_table

--melihat semua kolom dan DDLnya/spesifikasi kolomnya
desc tabmahasiswa

--mengambil(get) atau menampilkan semua data di kolom tabel
SELECT * FROM tabel
