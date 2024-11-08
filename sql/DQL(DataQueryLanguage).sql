-- Klause WHERE dapat digabungkan dengan:
-- =  <  <=  >=  >  <>  IS
-- LIKE OPERATOR contoh
    --tampilkan data apapun yang ada huruf pertama di kata adalah    a 'a%'
    --tampilkan data apapun yang ada huruf terakhir di kata adalah   a '%a'
    --tampilkan data apapun di posisi manapun yang memiliki huruf    a '%a%'
    --tampilkan data apapun yang memiliki a dipaling depan dan u di akhir 'a%b'
    --tampilkan data apapun yang memiliki a didepan dan setidaknya ada 2 karakter di belakang 'a_%'
    --tampilkan data apapun yang memiliki a didepan dan setidaknya ada 3 karakter di belakang 'a_%'

-- ARITHMETIC OPERATOR
    -- % atau MOD    untuk hasil pembagian sisa / modulo
    -- + - * /       Aritmatika biasa
    -- +             Menambahkan positif atau negatif didepan untuk hasil nilai positif atau negatif juga
    -- DIV           Integer DIVISION untuk membagi angka numerik dan hasilnya selalu integer
    

--AGGREGAT fungsi
    --COUNT(*)
    --SUM(kolom)
    --MAX(kolom)
    --MIN(kolom)
    --AVG(kolom)

-- IN dan NOT IN
-- AND OR NOT

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- MENGAKSES DATABASE

-- Melihat engines di sql
SHOW ENGINES;

-- Cek semua databasenya apakah ada databasename yang muncul dengan syntax:
SHOW DATABASES;

-- Masuk ke database untuk mulai management table
USE databasename; --bukan termasuk DQL

SELECT LAST_INSERT_ID(); untuk cek id terkahir yang telah di auto increment
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
SELECT * FROM nama_table WHERE nama_kolom_umur = 17 ; --menampilkan semua blok baris yang hanya baris dengan kolom nama_kolom_umur nya memiliki nilai 7
SELECT * FROM nama_table WHERE nama_kolom_umur >=17; --menampilkan semua baris data dengan kolom nama_kolom_umurnya >=17
SELECT * FROM nama_table WHERE nama_kolom_nama = 'ucik'; --menampilkan semua baris data dengan kolom nama_kolom_nama nya adalah ucik

-- Menampilkan semua baris data di kolom nama_kolom_nama yang mana hanya data di baris yang memiliki kolom nama_kolom_umur bernilai >=17 dan nama_kolom_tinggi 20 dan nama_kolom_golongan b
SELECT nama_kolom_nama FROM nama_table WHERE nama_kolom_umur >= 17 AND nama_kolom_tinggi = 20 AND nama_kolom_golongan = 'b'; --atau

-- Menampilkan semua baris di semua kolom dari nama_table yang mana di baris tersebut memiliki nama_kolom_tinggi_wanita dengan nilai 140 atau nama_kolom_jenis_kelamin dengan nilai wanita
SELECT * FROM nama_table WHERE nama_kolom_tinggi_wanita = 140 OR nama_kolom_jenis_kelamin = 'wanita';

-- Menampilkan semua baris data disemua kolom dimana hanya menampilkan data di baris yang yang kolom nama_kolom_umur bernilai null atau data null atau sebaliknya
SELECT * FROM nama_table WHERE nama_kolom_umur IS NULL;
SELECT * FROM nama_table WHERE nama_kolom_umur IS NOT NULL;

-- Menampilkan semua baris di semua kolom tapi yang di kolom nama_kolom_umur nya tidak memiliki nilai 15 atau tidak sama dengan 15
SELECT * FROM nama_table WHERE nama_kolom_umur <> 20;
SELECT * FROM nama_table WHERE NOT nama_kolom_umur = 20;

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--IN OPERATOR
--Mirip seperti WHERE dengan OR

--Menampilkan semua baris data di semua kolom pada baris yang memiliki kolom nama_kolom_jenis_makanan tahu / tempe / nasi ataupun sebaliknya(NOT)
SELECT * FROM nama_table WHERE nama_kolom_jenis_makanan IN ('tahu','tempe','nasi');
SELECT * FROM nama_table WHERE nama_kolom_jenis_makanan NOT IN ('tahu','tempe','nasi');

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--LIMIT OPERATOR

-- Menampilkan tidak semua baris data di semua kolom atau ada limitasi banyaknya baris yang ditampilkan dan pembatasan dimulai dari baris ke berapa
SELECT * FROM nama_table WHERE nama_kolom = 12 ORDER BY nama_kolom ASC LIMIT 2; --memunculkan hanya 2 baris dimulai dari baris yang memiliki kolom nama_kolom dengan nilai dari 1 - 9
SELECT * FROM nama_table WHERE nama_kolom = 12 ORDER BY nama_kolom ASC LIMIT 5,2; --memunculkan hanya 2 baris dimulai dari baris ke 5 dari nama_kolom 1-9 sehingga yang muncul baris 6 dan 7

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
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

-- Menampilkan semua baris data di kolom dimana baris tersebut memiliki kolom nama_kolom_orang_pertama dengan nilai yang memiliki kata 'aku' atau kebalikannya
SELECT * FROM nama_table WHERE nama_kolom_orang_pertama LIKE '%aku%';
SELECT * FROM nama_table WHERE nama_kolom_orang_pertama NOT LIKE '%aku%';

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- FULLTEXT mirip seperti LIKE untuk pencarian. FULLTEXT mendukung untuk pencarian yang berindex artinya hanya satu kolom yang dipilih maka kolom itu yang dicari datanya sedangkan LIKE dicari perbaris atau semua kolom karena tidak mendukung index
SELECT * FROM nama_tabel WHERE MATCH(nama_kolom1,nama_kolom2)
	AGAINST('Ayam' IN NATURAL LANGUAGE MODE); --akan menampilkan baris yang memiliki kata Ayam

SELECT * FROM nama_tabel WHERE MATCH(nama_kolom1,nama_kolom2)
	AGAINST('+Ayam -bakso' IN BOOLEAN MODE); --menampilkan baris yang memiliki kata ayam namun bila ada kata bakso juga di kolom itu maka barisnya tidak akan di tampilkan

SELECT * FROM nama_tabel WHERE MATCH(nama_kolom1,nama_kolom2)
	AGAINST('bakso' WITH QUERY EXPANSION); --menampilkan baris yang memilii kata bakso dan semua kata yang memiliki kata yang berhubngan atau dekat dengan kata bakso di valuenya

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--BETWEEN dan ALIASES OPERATOR

-- Menampilkan semua baris data di kolom dengan nilai nama_kolom_umur antara 17 dan 20;
SELECT * FROM nama_table WHERE nama_kolom_umur BETWEEN 17 AND 20;

-- Menampilkan semua baris data di kolom nama_kolom1 dan nama_kolom2 dengan nama alias
SELECT nama_kolom1 AS alias_nama_kolom1, nama_kolom2 AS alias_nama_kolom2 FROM nama_table;

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- DATE and TIME FUNCTION

-- Menampilkan semua baris data hanya di kolom id dan bulan dan tahun saja. Kolom bulan dan tahun diambil dari kolom dengan type data timestamp atau datetime
SELECT nama_kolom_id, MONTH(nama_kolom_timestamp) AS 'ini_kolom_bulan' FROM nama_table; --atau
SELECT nama_kolom_id, YEAR(nama_kolom_timestamp) FROM nama_table;


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

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- JOIN

--INNER JOIN hanya mengambil atau menampilkan data yang berelasi antar tabel. Jika data tidak berelasi atau nilai id berbeda dari referencenya maka tidak ditampilkan. By default saat membuat JOIN adalah inner join. Pada Inner join hanya menghubungkan baris data yang kolom idnya sama dengan kolom di table joinnya. Jika kolom itu null atau beda maka tidak akan terjoin atau tampil tapi yang lain yang sama idnya tetap tampil. Dalam hal ini baik nama_table1, nama_table2 tidak akan muncul barisnya jika salah satu dari table tersebut id kolomnya nilainya berbeda
--Singgle JOIN
SELECT * FROM nama_table 
	INNER JOIN nama_table_dijoin ON (nama_tabel_dijoin.nama_kolom_yang_sama_atau_idReference(fk) = nama_tabel.nama_kolom_yang_sama_dengan_table_yang_ngejoin(pk);
--MULTIPLE JOIN (contoh yang multiple join) Kita join dari nama_table1 -> nama_table2 -> nama_table3 dimana table3 terhubung ke table 2 bukan ke table 1 meskipun pada dasarnya mereka sudah terhubung berdasarkan many to many
SELECT nama_table1.kolom_id, nama_table2.kolom_fk_id nama_table3.kolom_barang FROM nama_tabel1
	INNER JOIN nama_tabel2 ON(nama_table1.id = nama_table2.kolom1_fk_id) --nama_table1.id adalah pk di tabel one dan nama_table2 adalah many
	INNER JOIN nama_table3 ON(nama_table2_kolom2_fk.id = nama_table3.id); --nama_table3 adalah pk di table one dan nama_table2_kolom2 adalah many

-- LEFT JOIN berebeda denngan inner join yang tidak akan menampilkan satu baris data gabungan jika ada nilai di kolom id kedua table yang berbeda. Untuk Left join ini jika antar 2 table itu kolom idnya berbeda maka baris data akan tetap ditampilkan dan muncul nilai data dari table yang diselect bukan yang dijoin. Sedangkan nilai tabel yang dijoinkan akan berisi nilai null dan tergabung dengan nilai di left atau nilai di kolom table yang di select
SELECT * FROM nama_table 
	LEFT JOIN nama_table_dijoin ON (nama_tabel_dijoin.nama_kolom_yang_sama_atau_idReference(fk) = nama_tabel.nama_kolom_yang_sama_dengan_table_yang_ngejoin(pk);

-- RIGHT JOIN kebalikan dari LEFT JOIN dimana yang ditampilkan adalah irisan atau kolom yang sama antar table dan kolom antar table yang tidak memiliki nilai sama atau id yang sama dari ON JOIN akan ditampilkan data yang kanan atau data dari baris table yang dijoin sedangkan untuk table yang diselect akan tergabung satu baris dengan nilai null
SELECT * FROM nama_table 
	RIGHT JOIN nama_table_dijoin ON (nama_tabel_dijoin.nama_kolom_yang_sama_atau_idReference(fk) = nama_tabel.nama_kolom_yang_sama_dengan_table_yang_ngejoin(pk);

--CROSS JOIN jarang digunakan dan sifatnya lebih ke perkalian

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- SUBQUERY artinya hasil dari query yang ada di where digunakan untuk query utama diluar where atau yang menggunakan where. Bisa uga untuk hasil dari Suqquery ke FROM
SELECT * FROM nama_table1
	WHERE nama_kolom_table1 > (SELECT AVG(nama_kolom_umur) FROM nama_table); --hasil dari subquery adalah satu kolom dengan nilai rata-rata yang dipakai untuk menentukan Where nama_kolom_table1 > nilai rata-rata
SELECT MAX(beri_nama_kolom.nama_kolom)
	FROM(SELECT nama_kolomnya FROM nama_table_lain INNER JOIN(nama_table_lain.kolomId = nama_table_lain1.id_table_lain)) as beri_nama_kolom; --hasilnya adalah menampilkan semua nilai di kolom beri_nama_kolom. Nah karena kolom beri_nama_kolom ditaruh di FROM maka hasil di subquery adalah nama kolomnya untuk digunakan FROM


