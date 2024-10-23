--INNER JOIN hanya mengambil atau menampilkan data yang berelasi antar tabel. Jika data tidak berelasi atau nilai id berbeda dari referencenya maka tidak ditampilkan. By default saat membuat JOIN ada inner join
SELECT * FROM nama_tabel INNER JOIN nama_tabel_dijoin ON (nama_tabel_dijoin.nama_kolomIdnya = nama_tabel.nama_kolomId);

--LEFT JOIN digunakan untuk menampilkan semua data di kololm sebelah baik berelasi ataupun tidak dan baris yang tidak berelasi akan di tampilkan null isi datanya jika idnya di sebelah kiri tidak berelasi
SELECT * FROM nama_tabelKu
LEFT JOIN nama_tabelLain ON (nama_tabelLain.idKu = nama_tabelKu.id);
--Ini akan memumculkan semua data dari kolom nama_tabelKu.id(primaryKey) baik yang berelasi dengan nama_tabelLanin.idKu ataupun tidak. Jika tidak ada relasi maka data dari tabel lain akan ditampilkan null

--RIGHT JOIN kebalikan dari LEFT JOIN dimana semua data di tabel_lain akan di tampilkan dan jika ada data di tabel lain yang tidak berelasi dengan tabelku makan nilai di tabelku(sebelah kiri) yang akan menjadi null

--CROSS JOIN JARANG DI LAKUKAN ini hanya untuk membuat urutan banyak data total ke tabel lain 
