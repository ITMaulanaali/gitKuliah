--Untuk mengelola Transaksi dalam database. Ada 3:
--COMMIT
--ROLLBACK
--SAVEPOINT

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- START TRANSACTION maka ketika dijalankan 1 atau lebih hasil query tidak akan di push ke mysql hingga klik COMMIT. Dan jika ROLLBACK semua hasil query tidak di push ke mysql dan dihapus hingga semua
-- BY DEFAULT proses TRANSACTION ini sudah menerapkan LOCKING hingga COMMIT atau ROLLBACK
START TRANSACTION;

--queryDML1;
--queryDML2;
--queryDML3;

COMMIT; --atau
ROLLBACK; --kita bisa melakukan di program untuk start trasaction ketika event di tekan kemudian jalankan semua query. Cek setiap query apakah berhasil? Jika Iya commit jika salah satu (AND) tidak berhasil maka ROLLBACK

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--LOCKING (hold) ini adalah konsep dimana ketika query di user lain dijalankan maka query yang sama di user kedua tidak bisa dilakukan. Ini mencegah agar data tetap konsisten. Sebagai contoh jika user1 melakukan query menampilkan data stok dan user2 juga melakukan query menampilkan stok. Nilai stock yang mereka dapat akan sama. Namun masalah terjadi ketika user1 mengupdate stock dengan diborong habis. Ketika hal ini terjadi hasil query menampilkan di user 2 akan tetap sama(memiliki stock) sehingga perubahan stock di user 2 akan tidak konsisten
SELECT * FROM nama_table WHERE nama_kolom_stock = 100 FOR UPDATE; --query di user1
--query untuk melakukan update stock
COMMIT; --user 2 tidak akan bisa melakukan SELECT di baris yang memiliki nama_kolom_stock seperti query di user1 jika belum di COMMIT (hold/block), sehingga ketika commit hasiln query select2 di user2 akan sesuai

--Pada kasus tertentu kita ingin melakukan update pada data secara manual di database dengan melihat terlebih dahulu datanya. Proses melkhat ini akan lama hingga kita melakukan update, Itulah mengapa locking manual ini juga akan membuat user lain yang menggunakan database untuk menunggu.
--HATI HATI terhadap DEADLOCK yang menghold atau antri dengan dirinya sendiri sehingga looping lock terus

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--LOCKING TABLE ada 2 jenis READ dan WRITE
--READ TABLE berfungsi untuk menglocking sebuah table sehingga data didalamnya hanya bisa di read baik dari user1 ataupun user2 atau semua user. Ini biasanya digunakan jika ingin melakukan query menampilkan data di table yang dilock untuk pembacaan semua baris data agar tidak ada data yang update/insert/delete di table tersebut saat sedang membaca data di table
LOCK TABLE nama_table READ;
UNLOCK TABLES; --untuk membuka loc ketika sudah selesai

--WRITE TABLE ketika user1 melakukan locking table dengan WRITE maka user manapun tidak bisa melakukan query apapun ke table tersebut. Hanya user1 yang bisa memanipulasi data di table tersebut baik query untuk menampilakn data ataupun query untuk update data
LOCK TABLE nama_table WRITE;
UNLOCK TABLES;

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--LOCKING INSTANCE ini melakukan lock pada satu database yang di use. Dimana user lain manapun tidak bisa melakukan DDL tapi masih bisa menggunakan DML pada table di database yang di lcok yang biasanya berfungsi untuk backup
LOCK INSTANCE FOR BACKUP;
UNLOCK INSTANCE;

-----------
