--Semua Type data angka tidak memerlukan range atau jangkauan atau batas berapa banyak karakter yang bisa diinput. Kecuali tipe data DECIMAL dan NUMERIC harus diberikan jangkauan banyaknya digit di depan koma(,) dan dibelakang (,)

--TINYINT (bilangan bulat) menggunakan memory sebesar 1 Byte atau 8bit memory
TINYINT

--SMALLINT (bilangan bulat) menggunakan memory sebesar 2 Byte atau 16bit memory
SMALLINT

--MEDIUMINT (bilangan bulat) menggunakan memory sebesar 3 Byte atau 24bit memory
MEDIUMINT

--INT (bilangan bulat) menggunakan memory sebesar 4 Byte atau 32bit memory
INT

--BIGINT (bilangan bulat) menggunakan memory sebesar 8 Byte atau 64bit memory
BIGINT

--FLOAT (bilangan pecahan) menggunakan memory sebesar 4 Byte atau 32bit memory. Angka pecahan untuk presisi tinggi
FLOAT

--DOUBLE (bilangan pecahan) menggunakan memory sebesar 8 Byte atau 64bit memory. Angka pecahan untuk presisi tinggi
DOUBLE

--REAL (bilangan pecahan) menggunakan memory sebesar 4 Byte atau 32bit memory mirip seperti FLOAT. Angka Pecahan untuk presisi rendah
REAL

--DECIMAL dan NUMERIC memiliki range yang bervariasi tergantung dari panjang range yang di deklarasi didepan koma dan dibelakang koma. Tipe data ini mirip dan fungsinya juga mirip
-- perhitungan memorynya adalah (1 byte untuk 9 digit pertama) dan 1 byte untuk tanda minus(-)
DECIMAL(10,5) -- 10 angka di depan koma dan 5 angka di belakang koma
NUMERIC(3,7) -- 3 angka di depan koma dan 7 angka di belakang koma



--TIPE DATA TEXT (STRING). Harus atau memerlukan penulisan range untuk membatasi jangkauan karakter kecuali tipe data jenis TEXT

--CHAR menyimpan data string dengan ukuran tetap yaitu minimal bydefault 4 Byte (1 karakter 1 byte) jadi jika kata yang dimasukkan kurang dari 4 byte / 4 karakter maka memory yang digunakan tetep 4 byte(tetap)
CHAR(10) --maksimal 10 karakter dengan total memory tiap data stringnya 10 Byte

--VARCHAR menyimpan data String dengan ukuran dinamis yaitu minimal bydefault 1 Byte (1 karakter 1 byte) jadi jika kata yang dimasukkan kurang dari panjang karakter yand di deklar maka hanya sebanyak data / nilai itu yang disimpan ke memory
VARCHAR(10) --maksimal 10 karakter string. Jika datanya 3 byte maka yang disimpan di memory hanya 3 byte

--TINYTEXT menyimpan text ukuran dinamis + 1 Byte untuk menyimpan panjang data. Menggunakan memory sebesar 1 byte atau 8bit
TINYTEXT

--TEXT menyimpan text ukuran dinamis + 2 Byte untuk menyimpan panjang data. Menggunakan memory sebesar 2 byte atau 16bit
TEXT

--MEDIUMTEXT menyimpan text ukuran dinamis + 3 Byte untuk menyimpan panjang data. Menggunakan memory sebesar 3 byte atau 24bit
MEDIUMTEXT

--LONGTEXT menyimpan text ukuran dinamis + 4 Byte untuk menyimpan panjang data. Menggunakan memory sebesar 4 byte atau 32bit
LONGTEXT



--TYPE DATA DATE TIME atau type data yang menyimpan waktu

--DATE menyimpan data tanggal ukuran 3 Byte (YYYY-MM-DD)
DATE

--TIME menyimpan data waktu ukuran 3 Byte (HH:MM:SS)
TIME

--DATETIME menyimpan data tanggal dan waktu ukuran 8 Byte
DATETIME

--YEAR menyimpan data tahun saja ukuran 1 Byte
YEAR



--TYPE DATA BLOB untuk menyimpan data dalam bentuk biner sehingga bisa digunakan untuk menyimpan data video, musik, gambar dan lain-lain

--BIT ukuran 7 bit
BIT

--TINYBLOB ukuran 1 byte atau 8bit
TINYBLOB

--BLOB ukuran 2 byte atau 16bit
BLOB

--MEDIUMBLOB ukuran 3 byte atau 24bit
MEDIUMBLOB

--LONGBLOB ukuran 4 byte atau 32bit
LONGBLOB

-------------------------------------------------------------
binary
image atau long varbinary
money
smalldatetime
smallmoney
sql_variant
timestamp
uniqueidentifier
varbinary
