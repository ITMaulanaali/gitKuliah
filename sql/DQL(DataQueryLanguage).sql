-- MENGAKSES DATABASE

-- Cek semua databasenya apakah ada databasename yang muncul dengan syntax:
SHOW DATABASES;

-- Masuk ke database untuk mulai management table
USE databasename; //bukan termasuk DQL

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--MENGAKSES TABLE

-- Menampilkan table apa saja yang ada di satu database yang di pilih / di use
SHOW TABLES;

-- Melihat deskripsi table atau konfigurasi / spesifikasi / parameter apa saja di table setelah create table tersebut secara mendetail
SHOW CREATE TABLE nama_table;

-- Menampilkan kolom dan type data apa saja yang ada di suatu table
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

-- Menampilkan semua baris data di semua kolom yang mana hanya data di baris yang memiliki kolom nama_kolom_umur bernilai >=17 dan <=20
SELECT * FROM nama_table WHERE nama_kolom_umur >=17 AND <=20; --atau
SELECT * FROM nama_table WHERE nama_kolom_umur BETWEEN 17 AND 20;

-- Menampilkan semua baris data disemua kolom dimana hanya menampilakan data di baris yang memiliki kolom nama_kolom_umur bernilai >=17 dan nama_kolom_umur ditampilkan secara urut dari 1 - 17 serta memiliki kolom nama_kolom_nama dan diurutkan dari z - 1
SELECT * FROM nama_table WHERE nama_kolom_umur >=17 ORDER BY nama_kolom_umur ASC, nama_kolom_nama DESC;

-- Menampilkan semua baris data disemua kolom dimana hanya menampilkan data di baris yang yang kolom nama_kolom_umur bernilai null atau data null
SELECT * FROM nama_tabel WHERE nama_kolom_umur IS NULL;

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
