# Query 

## Mencari Username dan Password Yang Sesuai
SELECT username, password FROM anggota WHERE username = '$username' and password = '$password';

## 	Menampilkan Nama Anggota
SELECT nama FROM pengunjung WHERE no_induk= '$no_induk' 

## Menampilkan Informasi Anggota
SELECT anggota.ID_anggota, pengunjung.nama, pengunjung.no_induk, pengunjung.umur, pengunjung.status, pengunjung.jenis_kelamin FROM anggota JOIN pengunjung ON anggota.no_induk = pengunjung.no_induk where anggota.ID_angota = ‘$ID_anggota’;

## 	Menampilkan Buku
SELECT buku.no_buku, buku.judul, buku.tahun_terbit, penerbit.nama_penerbit, kategori.jenis FROM Buku JOIN Penerbit on buku.id_penerbit = penerbit.id_penerbit JOIN Kategori on buku.no_kategori = kategori.no_kategori;

## 	Mencari Buku
SELECT judul FROM buku WHERE judul = ‘$judul’;

## 	Menampilkan Peminjaman
SELECT peminjaman.ID_peminjaman, peminjaman.tanggal_pinjam, peminjaman.tanggal_kembali, peminjaman.tarif_denda, peminjaman.keterangan_denda, buku.judul_buku FROM peminjaman JOIN buku ON peminjaman.no_buku = buku.no_buku WHERE peminjaman.ID_peminjaman = '$ID_peminjaman';

## 	Mencari Peminjaman
SELECT ID_peminjaman FROM peminjaman WHERE tanggal_pinjam = '$tanggal_pinjam' AND tanggal_kembali = '$tanggal_kembali';

## Mengupdate Peminjaman
START TRANSACTION; 
UPDATE peminjaman SET tanggal_pinjam = ' $tanggal_ pinjam ', tanggal_kembali = '$tanggal_kembali ', WHERE ID_peminjaman = ‘$ID_peminjaman'; 
COMMIT;

## 	Menampilkan Anggota
SELECT anggota.ID_anggota, anggota.no_induk, anggota.username, anggota.password, pengunjung.status, pengunjung.jenis_kelamin, pengunjung.umur, pengunjung.nama FROM anggota JOIN pengunjung ON anggota.no_induk = pengunjung.no_induk;

## 	Mencari Anggota
SELECT anggota.ID_anggota, pengunjung.nama FROM anggota JOIN pengunjung ON anggota.no_induk = pengunjung.no_induk WHERE ID_anggota = '$ID_anggota ';
