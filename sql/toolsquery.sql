--Query tambahan untuk bantuan menggunakan mysql

-- Cek semua databasenya apakah ada databasename yang muncul dengan syntax:
SHOW DATABASES;

--Syntax untuk melakukan backup database
--		//user	/pass	/database   /table	//membuat file yang menyimpan backup
sudo mysqldump -u admin -p dbperkuliahan tabmahasiswa -r database.sql;

--Masuk ke database untuk mulai management table
USE databasename;
