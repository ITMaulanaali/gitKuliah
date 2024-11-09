--Syntax untuk melakukan backup database dengan mysqldump yang ada di direktori ./bin/mysqldump
--		//user	/pass	/database   /table	/result-file //membuat file yang menyimpan backup
sudo mysqldump -u admin -p nama_database nama_table -r /home/lan/nama_backup_database(nama_database_ini_yang_berisi_nama_table_ini).sql;


--Query untuk restore atau memasukan backup ke database nama_database_restore di file ./bin/mysql
./bin/mysql -u root -p nama_database_yang_akan_di_isi_hasil_backup < /lokasi/database/format.sql;
--Query untuk restore hasil backup dengan query di mysql
SOURCE /lokasi/hasil/backup/di/komputer/format.sql
