-- Klause WHERE dapat digabungkan dengan:
-- =  <  <=  >=  >  <>  IS
-- LIKE OPERATOR contoh
    --tampilkan data apapun yang ada huruf pertama di kata adalah    a 'a%'
    --tampilkan data apapun yang ada huruf terakhir di kata adalah   a '%a'
    --tampilkan data apapun di posisi manapun yang memiliki huruf    a '%a%'
    --tampilkan data apapun yang memiliki a dipaling depan dan u di akhir 'a%b'
    --tampilkan data apapun yang memiliki a didepan dan setidaknya ada 2 karakter di belakang 'a_%'
    --tampilkan data apapun yang memiliki a didepan dan setidaknya ada 3 karakter di belakang 'a_%'
-- IN dan NOT IN
-- AND OR NOT

--AGGREGAT fungsi
    --COUNT(*)
    --SUM(kolom)
    --MAX(kolom)
    --MIN(kolom)
    --AVG(kolom)



-- MENGAKSES DATABASE

-- Melihat engines di sql
SHOW ENGINES;

-- Cek semua databasenya apakah ada databasename yang muncul dengan syntax:
SHOW DATABASES;

-- Masuk ke database untuk mulai management table
USE databasename; --bukan termasuk DQL

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--MENGAKSES TABLE

-- Menampilkan table apa saja yang ada di satu database yang di pilih / di use
SHOW TABLES;

-- Melihat deskripsi table atau konfigurasi / spesifikasi / parameter apa saja di table setelah create table tersebut secara mendetail
SHOW CREATE TABLE nama_table;

-- Menampilkan kolom dan type data apa saja yang ada di suatu table(struktur table)
DESC nama_table;

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--SELECT

-- Menampilkan semua baris data atau semua data di semua kolom pada satu table yang di pilih / SELECT
SELECT * FROM nama_table;

-- Menampilkan semua baris atau semua data hanya di kolom nama_kolom
SELECT nama_kolom FROM nama_table;

-- Menempilkan semua baris data di semua kolom yang mana hanya menampilkan baris yang ada atau hanya memiliki nilai/data 17 di kolom nama_kolom_umur
SELECT * FROM nama_table WHERE nama_kolom_umur = 17; --menampilkan semua blok baris yang hanya baris dengan kolom nama_kolom_umur nya memiliki nilai 7
SELECT * FROM nama_table WHERE nama_kolom_umur >=17; --menampilkan semua baris data dengan kolom nama_kolom_umurnya >=17
SELECT * FROM nama_table WHERE nama_kolom_nama = 'ucik'; --menampilkan semua baris data dengan kolom nama_kolom_nama nya adalah ucik

-- Menampilkan semua baris data di kolom nama_kolom_nama yang mana hanya data di baris yang memiliki kolom nama_kolom_umur bernilai >=17 dan nama_kolom_tinggi 20 dan nama_kolom_golongan b
SELECT nama_kolom_nama FROM nama_table WHERE nama_kolom_umur >= 17 AND nama_kolom_tinggi = 20 AND nama_kolom_golongan = 'b'; --atau

-- Menampilkan semua baris di semua kolom dari nama_table yang mana di baris tersebut memiliki nama_kolom_tinggi_wanita dengan nilai 140 atau nama_kolom_jenis_kelamin dengan nilai wanita
SELECT * FROM nama_table WHERE nama_kolom_tinggi_wanita = 140 OR nama_kolom_jenis_kelamin = 'wanita';

-- Menampilkan semua baris data disemua kolom dimana hanya menampilkan data di baris yang yang kolom nama_kolom_umur bernilai null atau data null
SELECT * FROM nama_table WHERE nama_kolom_umur IS NULL;

-- Menampilkan semua baris di semua kolom tapi yang di kolom nama_kolom_umur nya tidak memiliki nilai 15 atau tidak sama dengan 15
SELECT * FROM nama_table WHERE nama_kolom_umur <> 20;
SELECT * FROM nama_table WHERE NOT nama_kolom_umur = 20;

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--SELECT DISTINCT

-- Menampilkan hanya baris data yang unik(bila duplikat hanya tampilkan 1, jika tidak duplikat maka tampilkan satu data itu(unik)) jika duplikat di semua kolom namun hanya menampilkan nilai data yang bila itu duplikat hanya ditampilkan satu saja untuk baris yang memiliki kolom nama_kolom_umur 15
--pelajari lagi
SELECT DISTINCT * FROM nama_table WHERE nama_kolom_umur = 15;

-- Menampilkan semua baris data di kolom nama_kolom_id yang unik yang mana baris tersebut juga memiliki kolom nama_kolom_umur yang bernilai 15
SELECT DISTINCT nama_kolom_id FROM nama_table WHERE nama_kolom_umur = 15;

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ORDER BY dan LIKE OPERATOR

-- Menampilkan semua baris data disemua kolom dimana hanya menampilakan data di baris yang memiliki kolom nama_kolom_umur bernilai >=17 dan nama_kolom_umur ditampilkan secara urut dari 1 - 17 serta memiliki kolom nama_kolom_nama dan diurutkan dari z - 1
SELECT * FROM nama_table WHERE nama_kolom_umur >=17 ORDER BY nama_kolom_umur ASC, nama_kolom_nama DESC;

-- Menampilkan semua baris data di kolom dimana baris tersebut memiliki kolom nama_kolom_orang_pertama dengan nilai yang memiliki kata 'aku'
SELECT * FROM nama_table WHERE nama_kolom_orang_pertama LIKE '%aku%';

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--BETWEEN dan ALIASES OPERATOR

-- Menampilkan semua baris data di kolom dengan nilai nama_kolom_umur antara 17 dan 20;
SELECT * FROM nama_table WHERE nama_kolom_umur BETWEEN 17 AND 20;

-- Menampilkan semua baris data di kolom nama_kolom1 dan nama_kolom2 dengan nama alias
SELECT nama_kolom1 AS alias_nama_kolom1, nama_kolom2 AS alias_nama_kolom2 FROM nama_table;

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- GROUP BY (biasanya dikombinasikan dengan aggregat)

-- Menampilkan perhitungan banyaknya baris data di kolom jumlah baris per kategori dari data di nama_kolom_group dan diurutkna dari 1 - 9
SELECT nama_kolom_group, COUNT(*) AS nama_kolom_jumlah_baris
FROM nama_table
GROUP BY nama_kolom_group
ORDER BY nama_kolom_jumlah_baris ASC;

-- Menampilkan total penjumlahan semua umur yang dikategorikan berdasarkan data di nama_kolom_nama dan ditampilkan semua barisnya yang memiliki nilai di kolom nama_kolom_gender adalah laki-laki
SELECT nama_kolom_nama, SUM(nama_kolom_umur) AS total_penjumlahan_umur
FROM nama_table
WHERE nama_kolom_gender = 'laki-laki'
GROUP BY nama_kolom_nama;

-- Menampilkan semua baris data maximal umur di kolom nama_kolom_umur yang dikategorikan dengan kolom nama_kolom_nama
SELECT nama_kolom_nama, MAX(nama_kolom_umur) AS umur_paling_tinggi
FROM nama_table
GROUP BY nama_kolom_nama;

-- Menampilkan semua baris data minimal umur di kolom nama_kolom_umur yang dikategorikan dengan kolom nama_kolom_nama
SELECT nama_kolom_nama, MIN(nama_kolom_umur) AS umur_paling_kecil
FROM nama_table
GROUP BY nama_kolom_nama;

-- Menampilkan semua baris data rata-rata nilai umur yang dikategorikan berdasarkan data nilai nama di kolom nama_kolom_nama
SELECT nama_kolom_nama, AVG(nama_kolom_umur) AS rata_rata_umur
FROM nama_table
GROUP BY nama_kolom_nama;

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--HAVING
--Mirip seperti WHERE yang digunakan untuk pengelompokan kolom, HAVING digunakan untuk menggantikan WHERE sebagai pengelompokan data di kolom hasil dari GROUP BY

--Pemahaman logikannya seperti ini. Sebelumnya dimulai dari penulisan WHERE dulu kemudian GROUP BY itu akan membuat semua baris data ditampilkan dengan ketentuan expression WHERE. Artinya ada data yang tidak ditampilkan dulu, kemudian data yang ditampilkan mulai di GROUP BY atau di kelompokan(ini akan menampilkan data setelah WHERE expression dan setelah di group by nilai di kolom x). Jika menggunakan HAVING, maka data bisa di GROUP BY dulu atau pisahkan per nilai kemudian di HAVING atau tampilkan mana saja hasil dari agregat yang ingin ditampilkan. Lalu kenapa pengelompokkan hasil dari agregat fungsi tidak bisa menggunakan WHERE saja? Karena suatu query yang memiliki kondisi agregat tidak bisa di process dengan WHERE jadi harus HAVING. Ini perlu pemahaman alur eksekusi query yang dijalankan


-- Menampilkan jumlah baris data di kolom nama_kolom_nama dan nama_kolom_baru_dari_count_berisi_jumlah_baris_data yang dikategorikan berdasarkan nama_kolom_nama yang hanya menampilkan baris dengan nilai di nama_kolom_umur adlah 15 atau 20
SELECT nama_kolom_nama, COUNT(*) AS nama_kolom_berisi_jumlah_baris_data
FROM nama_table
GROUP BY nama_kolom_nama
HAVING nama_kolom_berisi_jumlah_baris_data BETWEEN 15 AND 20;

-- 
