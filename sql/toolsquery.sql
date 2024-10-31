-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- PENGELOLAAN ACCOUNT DATABASE MYSQL

--Syntax untuk melakukan backup database
--		//user	/pass	/database   /table	//membuat file yang menyimpan backup
sudo mysqldump -u admin -p nama_database nama_table -r /home/lan/nama_backup_database(nama_database_ini_yang_berisi_nama_table_ini).sql;


