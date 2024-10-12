--mengcreate user login di mysql. 
--pada baris 1 admin(user) @(presentasi dari alamat user yang akses) %(bahwa semua host atau mesin atau alamat yang digunakan host dan akses sql dengan user tersebut bisa digunakan)
--gunakan alamat ip atau localhost untuk spesfik user ini hanya bisa digunakan jika berada pada alamat ini
--by default setelah user tercreate ia tidak dapat digunakan atau terblock semua maka dari itu berikan grant all(untuk akses semua) *(semuadatabases).*(semuatables) untuk user admin
--flush privilages memastikan bahwa privilages grant all telah dibuat
CREATE USER 'admin'@'%' IDENTIFIED BY 'ikanikan';
GRANT ALL PRIVILEGES ON *.* TO 'admin'@'%';
FLUSH PRIVILEGES; 
