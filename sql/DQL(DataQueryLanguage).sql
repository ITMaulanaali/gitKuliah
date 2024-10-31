-- MENGAKSES DATABASE

-- Cek semua databasenya apakah ada databasename yang muncul dengan syntax:
SHOW DATABASES;

-- Masuk ke database untuk mulai management table
USE databasename; //bukan termasuk DQL

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--MENGAKSES TABLES

-- Menampilkan table apa saja yang ada di satu database yang di pilih / di use
SHOW TABLES;

-- Melihat deskripsi table atau konfigurasi / spesifikasi / parameter apa saja di table setelah create table tersebut secara mendetail
SHOW CREATE TABLE nama_table;

-- Menampilkan kolom dan type data apa saja yang ada di suatu table
DESC nama_table;

-- Menampilkan semua data di semua kolom pada satu table yang di pilih / select
SELECT *(nama_kolom) FROM nama_table;

-- Menampilkan semua baris data yang mana nama_kolom_umur harus hanya memiliki data "16" pada satu table yang di select
SELECT *(nama_kolom) FROM nama_table WHERE nama_kolom_umur = 16;

-- Me
