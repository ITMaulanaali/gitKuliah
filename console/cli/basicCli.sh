#menampilkan siapa saya/user yang sedang kita gunakan
whoamai

#menampilkan informasi lokasi direktori kita sekarang
pwd

#menampilkan semua isi dari direktori kita sekarang
ls

#melakukan update otomatis repository
apt-get update

#melakukan upgrade package yang sudah terinstall dengan package baru yang didapat dari repository
apt-get upgrade

#melakukan cek spesifikasi package
apt show namaPackage

#mencari package yang berhubungan
apt search namaPackage

#menampilkan history dari semua command yang sudah di ketikkan
history

#membuat file baru
touch namaFile.format

#mengedit file yang sudah ada
nano namaFile.format

#berindah folder
cd lokasi/Folder

#menghapus file
rm namaFile
#menghapus folder beserta file didalamnya
rm -r namaFolder

#mencari manual dari bin atau tool
man rm

#menampilkan jenis dari file atau direktori
file namaFileAtauDirektori

#menampilkan jenis file, kapan diakses, kapan modifikasi dan lainya dalam bentuk static yang lebih lengkap
stat namaFileAtauDirektori

#menampilkan isi file
cat namaFile

#menampilkan data yang panjang bisa dengan mencari dengan klik enter dan mengurut dari bawah ke atas atau sebaliknya
less dan more

#mengambil data file dari 10 baris teratsa
head namaFile

#mengambil data file dari 10 baris terbawa
tail

#mengambil data file dari 20 baris terbawa
tail -n 20

#mengoveride data hasil dari file lain di override / timpa ke file yang lain
cat namaFile > namaFileBaru
#menambah data dari file lain ke file baru dan setiap ada data baru akan tetap ditambah(append dan tidak di override)
cat namaFile >> namaFileBaru

#macam-macam editor
nano
vim
gedit

#membuat file archive dari beberapa file ke format dengan format tar. Untuk compresi bisa menggunakan tar.gz
tar -cvf namaNewFileArchive.tar namaFile1 namaFile2 namaFile3
#extrak file tar
tar -xf namaNewFileArchive.tar

#melakukan cek system aplikasi atau daemon yang berjalan
systemctl start namaAplikasi
systemctl stop namaAplikasi
systemctl enable namaAplikasi
systemctl disable namaAplikasi
systemctl status namaAplikasi
