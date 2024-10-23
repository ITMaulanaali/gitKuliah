--Ada berbagai macam set operator UNION berarti penyatuan yaitu data disatukan antar 2 tabel berbeda nilainya
--UNION
--UNION ALL
--INTERSECT
--MINUS


--Query UNION untuk menyatukan nilai atau data yang sama di kolom sehingga tidak tampil lebih dari sekali meskipun data lebih dari satu
SELECT DISTINCT nama_kolom1 FROM nama_tabel1
UNION
SELECT DISTINCT nama_kolom2 FROM nama_tabel2;

--Query UNION ALL menyatukan nilai atau data antar 2 tabel(semua nilai meskipun yang sama)
--Select DISTINCT digunakan untuk pencarian untuk nilai satu kolom yang sama menjadi 1(atau hanya satu yang muncul bila nilai sama)

SELECT DISTINCT nama_kolom1 FROM nama_tabel1
UNION ALL
SELECT DISTINCT nama_kolom2 FROM nama_tabel2; 
