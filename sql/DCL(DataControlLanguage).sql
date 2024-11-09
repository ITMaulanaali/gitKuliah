--Untuk mengontrol akses ke data di database. Ada 2:
--GRANT  : untuk memberi hak akses
--REVOKE  : untuk menghapus hak akses
--------------------------------------------------------
-- BY DEFAULT user itu mendapatkan semua akses atau all privilage jika tidak ada set grant apapun

--Pemberian hak akses selalu pada table dari database mana. Kita tidak bisa memberikan hak akses spesifik pada kolom di table karena kolom adalah satu kesatuan table


-- Merubah passoword user
ALTER USER 'username'@'lokasiUserBisaAkses(% untuk semua lokasi user ini bisa akses mysql)' IDENTIFIED BY 'new_password';


---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Memebuat USER
CREATE USER 'username'@'jaringan_sumber_user_mengakses_database'; --atau
CREATE USER 'username'@'%'; --username ini bisa mengakses database di semua lokasi

--Menghapus User
DROP USER 'username'@'jaringan_sumber_user_mengakses_database'; --atau
DROP USER 'username'@'%';

--Menambahkan pasword pada user
SET PASSWORD FOR 'username'@'localhost' = 'akses123';
SET PASSWORD FOR 'username'@'%' = 'akseskemanapun';

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Memberikan hak akses SELECT, INSERT, UPDATE dan DELETE pada khusus satu database untuk semua table didalam database
GRANT SELECT INSERT UPDATE DELETE ON nama_database.* TO 'username'@'localhost';
--Memberikan hak akses SELECT, INSERT, UPDATE dan DELETE pada khusus satu database untuk satu table didalam database
GRANT SELECT ON nama_database.nama_table TO 'username'@'privilage_ipnya';
--Memberikan hak akses DDL CREATE, DROP pada satu databse untuk semua table

--Menghapus hak akses SELECT, INSERT, UPDATE dan DELETE pada khusus satu database untuk semua table didalam database
REVOKE SELECT INSERT UPDATE DELETE ON nama_database.* FROM 'username'@'localhost';
--Menghapus hak akses SELECT, INSERT, UPDATE dan DELETE pada khusus satu database untuk satu table didalam database
REVOKE SELECT ON nama_database.nama_table FROM 'username'@'privilage_ipnya';

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Melihat hak akses yang sudah atau diberikan ke user
SHOW GRANST FOR 'username'@'localhost'
SHOW GRANST FOR 'username'@'%'
