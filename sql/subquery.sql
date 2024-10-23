--Subquery sesuai namanya yang berarti query di dalam query.
--Subquery digunakan untuk melakukan pencarian yang mungkin membutuhkan rumus tertentu atau query lain. Semisal kita ingin menampilkan rata rata data maka tentu selain menggunakan query untuk menampilkan juga butuh query untuk menghitung rata-rata kemudian nilai rata rata ditampilkan

--contoh subquery di WHERE
SELECT * FROM nama_tabelRata
WHERE nama_kolom > (SELECT AVG(nama_kolom) FROM nama_tabelRata);

--contoh subquery di FROM
SELECT MAX(cp.nama_kolom)
FROM (SELECT nama_kolom FROM nama_tabel
	INNER JOIN nama_tabelLain ON (nama_tabelLain.idKu = nama_tabel.id)) as cp;
