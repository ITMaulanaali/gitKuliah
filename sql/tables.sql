--membuat suatu table di dalam database
CREATE TABLE nama_tabel (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nama VARCHAR(100) NOT NULL,
    umur INT UNSIGNED NOT NULL,
    alamat TEXT,
	UNIQUE KEY umur_unique (umur),
	CONSTRAINT namaContraint CHECK (umur >= 18),
	INDEX alamat_index (alamat), --mempercepat pencarian tapi memperlambat query
	FULLTEXT kolom1Kolom2_search (nama,alamat),
	CONSTRAINT fk_tabelIni_tabelLainnya FOREIGN KEY(umur) REFERENCES tabelLainya(kolomIdPk)
		ON DELETE CASCADE ON UPDATE CASCADE; --mengatur behavior
) ENGINE = InnoDB;

--mengubah suatu table
ALTER TABLE nama_tabel
	ADD COLUMN nama_kolom TEXT,
	DROP COLUMN nama_kolom,
	RENAME COLUMN nama_kolom_saat_ini TO nama_kolom_baru,
	MODIFY nama_kolom VARCHAR(100) AFTER nama_kolom_beforenya,
	MODIFY nama_kolom VARCHAR(100) FIRST,
	ADD PRIMARY KEY (nama_kolom);

--memasukkan nilai atau value ke dalam kolom pada tabel
INSERT INTO nama_tabel (
nama_kolom1, nama_kolom2) VALUES(
value, 'valueVarchar');

--mengedit data/value di kolom2 dimana kolom1id adalah 1
UPDATE nama_tabel
SET kolom2 = 'ayam', kolom3 = kolom3 + 3000
WHERE kolom1 = 1;

--menghapus satu baris data(preferensi ke id atau identitas individu) atau blok kolom
DELETE FROM nama_tabel WHERE id/kolom1 = 1;

--membuat alias nama pada kolom dan / tabel
SELECT 	nama_kolom AS col1,
	nama_kolom2 AS col2,
	FROM nama_tabel AS tabelJualan; //by default harusnya nama_tabel.nama_kolom kini di rubah menjadi tabelJualan.col1

--mengambil(get) atau menampilkan semua data di kolom untuk mengambil atau menampilkan kolom tertentu saja sebutkan kolomnya di * kolom1, kolom2..
SELECT * FROM nama_tabel;

--NULL operator untuk mencari atau menampilkan data yang null/kosong
SELECT * FROM nama_tabel WHERE nama_kolom IS NULL;

--LIKE operator mengambil atau mencari atau menampilkan data string yang memiliki bagian huruf atau katanya
SELECT * FROM nama_tabel WHERE nama_kolom LIKE '%kataDiTengah%';

--FULL TEXT SEARCH sama seperti like tapi dia lebih ringan cocok untuk data yang banyak sekali. Ada 3 mode pencariannyanya dan kolom tersebut perlu di berikan mode fullTextSearch sebagai indexnya
SELECT * FROM nama_tabel WHERE MATCH(nama_kolom1,nama_kolom2)
	AGAINST('Ayam' IN NATURAL LANGUAGE MODE); --akan menampilkan baris yang memiliki kata Ayam

SELECT * FROM nama_tabel WHERE MATCH(nama_kolom1,nama_kolom2)
	AGAINST('+Ayam -bakso' IN BOOLEAN MODE); --menampilkan baris yang memiliki kata ayam namun bila ada kata bakso juga di kolom itu maka barisnya tidak akan di tampilkan

SELECT * FROM nama_tabel WHERE MATCH(nama_kolom1,nama_kolom2)
	AGAINST('bakso' WITH QUERY EXPANSION); --menampilkan baris yang memilii kata bakso dan semua kata yang memiliki kata yang berhubngan atau dekat dengan kata bakso di valuenya

--BETWEEN operator untuk menampilkan data di kolom dengan nilai antara(range)
SELECT * FROM nama_tabel WHERE nama_kolom BETWEEN 1000 AND 5000;

--IN operator untuk menampilkan atau get data pada kolom dengan nilai a atau b
SELECT * FROM nama_tabel WHERE nama_kolom IN ('makanan', 'minuman');

--menampilkan data kolom1id dan kolom2 dengan nilai kolom2 di tabel tabmahasiswa yaitu(value case insesitive)
SELECT kolom1id, kolom2 FROM tabmahasiswa WHERE kolom2 = 'ikan';

--menampilkan semua nilai di kolom secara terurut
SELECT * FROM nama_tabel ORDER BY nama_kolom ASC, nama_kolom DESC;

--melakukan limit berapa data yang ingin di tampilkan;
SELECT * FROM nama_tabel ORDER BY nama_kolom DESC, LIMIT 2; --hanya 2 baris data yang ditampilkan
SELECT * FROM nama_tabel ORDER BY nama_kolom DESC, LIMIT 3,2; --menampilkan 2 baris data dari baris ke 4 karena sudah di skip terlebih dahulu

--menampilkan nilai yang tidak duplikat pada kolom yang dipilih
SELECT DISTINCT nama_kolom FROM nama_tabel;

--membuat pembagian atau division yang selalu menhasilkan interger bilangan bulat
SELECT nama_kolom DIV 100 FROM nama_tabel;
SELECT * FROM nama_tabel WHERE price DIV 100 > 15;

--menampilkan data dengan perubahan tanpa merubah data asli di basisdata dengan case function
SELECT nama_kolom1,nama_kolom2, case nama_kolom2
				WHEN 'makanan' THEN 'enak' --jika nilai dari kolom2 itu makanan maka tampilkan menjadi enak
				WHEN 'minuman' THEN 'segar'
				ELSE 'itu bukan makanan atau minuman'
				FROM nama_tabel;

--fungsi di mysql untuk menampilkan data/value di kolom alias baru jika
SELECT nama_kolom, nama_kolom2, IF(nama_kolom2 = 'makanan', 'benar', 'salah') as 'namaKolomBaru'
				FROM nama_tabel;

--menampilkan data null berubah menjadi kosong dengan fungsi ifnull
SELECT *, IFNULL(nama_kolom2, 'nilainyaKosong') FROM nama_tabel;

--menggunakan aggregate function
SELECT COUNT(nama_kolom2) AS 'banyaknya product makanan dan minuman' FROM nama_tabel;
SELECT AVG(nama_kolom3) AS rataHarga, nama_kolom2 FROM nama_tabel GROUP BY nama_kolom2 HAVING rataHarga > 1000; --ini akan menampilkan baris yang sudah dihitung dengan aggregate di kolom rataHarga > 1000 yang akan ditampilkan, jika salah tidak ditampilkan
SELECT MAX(nama_kolom3) AS 'harga termahal', nama_kolom2 FROM nama_tabel GROUP BY nama_kolom2; --menampilkan beberapa baris dengan kolom2 value yang berbeda dan max productnya dihitung berdasarkan banyaknya value dari kolom2(digroup atau batas perhitungan fungsi di bagian kolom2 saja)
SELECT MIN(nama_kolom3) AS 'harga paling murah' FROM nama_tabel;

--JOIN atau menampilkan kolom lebih dari satu tabel
SELECT * FROM nama_tabel1 JOIN nama_tabel2 ON(nama_tabel1.nama_kolomFk = nama_tabel2.nama_kolomPk);

--melihat semua table yang telah dibuat
SHOW TABLES;

--syntax untuk mengdelete tabel dan membuat ulang tabel sehingga semua value atau datanya hilang dalam arti untuk menghapus semua nilai/value/data/baris di tabel
TRUNCATE nama_tabel;

--mendelete table secara permanen beserta semua data/baris/valuenya
DROP TABLE nama_tabel;

--melihat query untuk membuat tabel yang mirip seperti ini
SHOW CREATE TABLE nama_tabel;

--melihat semua kolom dan DDLnya/spesifikasi kolomnya
desc nama_tabel;

--query spesifikasi kolom
--data pada colom tidak boleh kosong
NOT NULL

--memberikan default value atau nilai default jika colom ini tidak di isi nilai
DEFAULT value

--untuk typeData TIMESTAMPT membuat DEFAULT value waktu saat ini
DEFAULT CURRENT_TIMESTAMP
