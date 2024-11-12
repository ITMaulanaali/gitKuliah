--TRIGGER
--dapat melakukan trigger atau statement ketika ada suatu DML di table yang mau di buat trigger

--sebelum itu buat sebuah nama table log_mhs yang berisi kolom alamat lama dan alamat baru dan kolom lainnya yang mau disini oleh delimiter
--Membuat trigger untuk menyimpan data di table log_mhs jika ada update di table mhs yang akan diupdate sebelum perintah update dijalankan
DELIMITER $$
CREATE TRIGGER update_alamat_mahasiswa
  BEFORE UPDATE
  ON nama_table_mahasiswa
  FOR EACH ROW
BEGIN
  INSERT INTO log_mhs(
  nim, alamat_lama, alamat_baru, waktu)VALUES(
  OLD.nim, OLD.alamat_lama, NEW.alamat_baru, NOW());
  END $$
DELIMITER;
