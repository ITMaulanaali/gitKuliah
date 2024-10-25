--mengcreate user login di mysql. 
--pada baris 1 admin(user) @(presentasi dari alamat user yang akses) %(bahwa semua host atau mesin atau alamat yang digunakan host dan akses sql dengan user tersebut bisa digunakan)
--gunakan alamat ip atau localhost untuk spesfik user ini hanya bisa digunakan jika berada pada alamat ini
--by default setelah user tercreate ia tidak dapat digunakan atau terblock semua maka dari itu berikan grant all(untuk akses semua) *(semuadatabases).*(semuatables) untuk user admin
--flush privilages memastikan bahwa privilages grant all telah dibuat
CREATE USER 'admin'@'%' IDENTIFIED BY 'ikanikan';
GRANT ALL PRIVILEGES ON *.* TO 'admin'@'%';
FLUSH PRIVILEGES; 


--Membuat user yang diizinkan mysql user tersebut darimana
CREATE USER 'lana'@'192.168.1.1'; --user lana dari ip 192.168.1.1 bisa akses sql selain itu tidak boleh akses

--mengset password user yang terdaftar di sql
SET PASSWORD FOR 'lana'@'192.168.1.1' = 'ikanikan';

--Menghapus user yang terdaftar di sql
DROP USER 'lana'@'192.168.1.1';

--Memberikan hak akses hanya bisa menampilkan data satu database dan semua tabel
GRANT SELECT ON dbmahasiswa.* TO 'lana'@'192.168.1.1';

--Memberikan hak akses untuk bisa menampilkan data, memasukkan data, edit data, hapus data di satu database dan semua tabelnya
GRANT SELECT, INSERT, UPDATE, DELETE ON dbmahasiswa.* TO 'lana'@'192.168.1.1';

--melihat hak akses apa saja yang dimiliki user tersebut
SHOW GRANTS FOR 'lana'@'192.168.1.1';

--mencabut hak akses dari user
REVOKE SELECT ON dbmahasiswa.* FROM 'lana'@'192.168.1.1';
