# <p align="center"> Laporan-Praktikum-3_Proyek-Pengenalan-Basis-Data_ERD </p>
<p align="center"> ERD Transaksi sederhana antar bank </p>

![Gambarnya Ga Ada ya ? :V Mungkin kamu kurang beruntung !](https://github.com/KillerKing93/Laporan-Praktikum-3_Proyek-Pengenalan-Basis-Data_ERD/blob/main/ERD%20Bank%20v2.drawio_v3.png) 
<br />
Gambar 1, ERD Transaksi sederhana antar bank
<br />
<br />

# Tabel ERD masing - masing entitas.
## TABEL ENTITAS NASABAH BANK
| Name Field | Type | Length | Keterangan |
| --- | --- | --- | --- |
| id_nasabah | int | 255 | Primary Key |
| id_bank | int | 255 | Foreign Key |
| nik | varchar | 16 | |
| nama | varchar | 55 | |
| jenis_kelamin | enum | | ('Laki - Laki', 'Perempuan') |
| alamat | varchar | 60 | |
| email | varchar | 60 | |
| nama_ibu | varchar | 55 | |
| no_handphone | varchar | 16 | |
| nama_ibu_dari_ibu | varchar | 55 | |

## IMPLEMENTASI TABEL NASABAH BANK

![Gambarnya Ga Ada ya ? :V Mungkin kamu kurang beruntung !](https://github.com/KillerKing93/Laporan-Praktikum-3_Proyek-Pengenalan-Basis-Data_ERD/blob/main/Gambar/Tabel2_Nasabah-Bank.png)
<br />
Gambar 2, Tabel Nasabah Bank yang di Implementasikan ke Dalam phpMyAdmin

Membuat tabel nasabah_bank di phpMyAdmin sesuai dengan spesifikasi yang telah dibuat sebelumnya dengan keterangan kolom - kolom sebagai berikut :
1. kolom id_nasabah yang memiliki tipe data integer dengan panjang 255 merupakan sebuah Primary Key
2. kolom id_bank yang memiliki tipe data integer dengan panjang 255 dan merupakan sebuah Foreign Key yang menghubungkan kolom id_bank pada tabel ini dengan kolom id_bank yang merupakan sebuah primary key dengan tipe data integer dengan panjang 255 pada tabel perusahaan_bank
3. nik merupakan sebuah kolom attribut dengan tipe data varchar dengan panjang 16
4. nama merupakan sebuah kolom attribut dengan tipe data varchar dengan panjang 55
5. jenis_kelamin merupakan sebuah kolom attribut yang memiliki tipe data enum serta memuat pilihan 'Laki - Laki' dan 'Perempuan'
6. alamat merupakan sebuah kolom attribut dengan tipe data varchar dengan panjang 60
7. email merupakan sebuah kolom attribut dengan tipe data varchar dengan panjang 60
8. nama_ibu merupakan sebuah kolom attribut dengan tipe data varchar dengan panjang 55
9. no_handphone merupakan sebuah kolom attribut dengan tipe data varchar dengan panjang 16
10. nama_ibu_dari_ibu merupakan sebuah kolom attribut dengan tipe data varchar dengan panjang 55

![Gambarnya Ga Ada ya ? :V Mungkin kamu kurang beruntung !](https://github.com/KillerKing93/Laporan-Praktikum-3_Proyek-Pengenalan-Basis-Data_ERD/blob/main/Gambar/Tabel2_Nasabah-Bank_Relasi.png)
<br />
Gambar 3, Relasi Foreign Key di Dalam Tabel nasabah_bank dengan Tabel Lain

Dari gambar di atas, dapat dilihat bahwa :
Foreign Key id_bank merupakan Primary Key yang berasal dari kolom id_bank tabel perusahaan_bank dari basis data erd_transaksi_di_bank
<br />
<br />

## TABEL ENTITAS REKENING BANK
| Name Field | Type | Length | Keterangan |
| --- | --- | --- | --- |
| id_rekening | int | 255 | Primary Key |
| id_nasabah | int | 255 | Foreign Key |
| id_bank | int | 255 | Foreign Key |
| saldo | decimal | 19,4 | |
| jenis_member | enum | | ('silver', 'gold', 'platinum')

## IMPLEMENTASI TABEL REKENING BANK

![Gambarnya Ga Ada ya ? :V Mungkin kamu kurang beruntung !](https://github.com/KillerKing93/Laporan-Praktikum-3_Proyek-Pengenalan-Basis-Data_ERD/blob/main/Gambar/Tabel3_Rekening-Bank.png)
<br />
Gambar 4, Tabel Rekening Bank yang di Implementasikan ke Dalam phpMyAdmin

Membuat tabel nasabah_bank di phpMyAdmin sesuai dengan spesifikasi yang telah dibuat sebelumnya dengan keterangan kolom - kolom sebagai berikut :
1. kolom id_rekening yang memiliki tipe data integer dengan panjang 255 yang merupakan sebuah primary key
2. kolom id_nasabah yang memiliki tipe data integer dengan panjang 255 dan merupakan sebuah Foreign Key yang menghubungkan kolom id_nasabah pada tabel ini dengan kolom id_nasabah yang merupakan sebuah primary key dengan tipe data integer dengan panjang 255 pada tabel nasabah_bank
3. kolom id_bank yang memiliki tipe data integer dengan panjang 255 dan merupakan sebuah Foreign Key yang menghubungkan kolom id_bank pada tabel ini dengan kolom id_bank yang merupakan sebuah primary key dengan tipe data integer dengan panjang 255 pada tabel perusahaan_bank
4. kolom saldo merupakan sebuah kolom attribut yang memiliki tipe data decimal dengan panjang (19,4)
5. kolom jenis_member merupakan sebuah kolom attribut yang memiliki tipe data enum serta memuat pilihan 'silver', 'gold', dan 'platinum'.

![Gambarnya Ga Ada ya ? :V Mungkin kamu kurang beruntung !](https://github.com/KillerKing93/Laporan-Praktikum-3_Proyek-Pengenalan-Basis-Data_ERD/blob/main/Gambar/Tabel3_Rekening-Bank_Relasi.png)
<br />
Gambar 5, Relasi Foreign Key di Dalam Tabel rekening_bank dengan Tabel Lain

Dari gambar di atas, dapat dilihat bahwa : 
1. Foreign Key id_nasabah merupakan sebuah primary key yang berasal dari kolom id_nasabah tabel nasabah_bank dari basis data erd_transaksi_di_bank
2. Foreign Key id_bank merupakan sebuah primary key yang berasal dari kolom id_bank tabel perusahaan_bank dari basis data erd_transaksi_di_bank
<br />
<br />

## TABEL ENTITAS PERUSAHAAN BANK
| Name Field | Type | Length | Keterangan |
| --- | --- | --- | --- |
| id_bank | int | 255 | Primary Key |
| alamat_bank | varchar | 60 | |
| nama_pemilik | varchar | 55 | |

## IMPLEMENTASI TABEL REKENING BANK

![Gambarnya Ga Ada ya ? :V Mungkin kamu kurang beruntung !](https://github.com/KillerKing93/Laporan-Praktikum-3_Proyek-Pengenalan-Basis-Data_ERD/blob/main/Gambar/Tabel1_Perusahaan-Bank.png)
<br />
Gambar 6, Tabel Rekening Bank yang di Implementasikan ke Dalam phpMyAdmin

Membuat tabel perusahaan_bank di phpMyAdmin sesuai dengan spesifikasi yang telah dibuat sebelumnya dengan keterangan kolom - kolom sebagai berikut :
1. kolom id_bank yang memiliki tipe data integer dengan panjang 255 merupakan sebuah Primary Key
2. kolom alamat_bank merupakan sebuah kolom attribut yang memiliki tipe data varchar dengan panjang 60
3. kolom nama_pemilik merupakan sebuah kolom attribut yang memiliki tipe data varchar dengan panjang 55
<br />
<br />

## TABEL TRANSAKSI NASABAH BANK DAN PERUSAHAAN BANK
| Name Field | Type | Length | Keterangan |
| --- | --- | --- | --- |
| id_transaksi | int | 255 | Primary Key |
| id_nasabah | int | 255 | Foreign Key |
| id_bank_tujuan | int | 255 | Foreign Key |
| tanggal_transaksi | datetime | | |
| jenis_transaksi | enum | | ('Pembayaran', 'Transfer')
| jumlah_transaksi | decimal | 19,4 | |
| keterangan | varchar | 25 | |

## IMPLEMENTASI TABEL TRANSAKSI NASABAH BANK DAN PERUSAHAAN BANK

![Gambarnya Ga Ada ya ? :V Mungkin kamu kurang beruntung !](https://github.com/KillerKing93/Laporan-Praktikum-3_Proyek-Pengenalan-Basis-Data_ERD/blob/main/Gambar/Tabel4_Transaksi.png)
<br />
Gambar 7, Tabel Transaksi yang di Implementasikan ke Dalam phpMyAdmin

Membuat tabel transaksi di phpMyAdmin sesuai dengan spesifikasi yang telah dibuat sebelumnya dengan keterangan kolom - kolom sebagai berikut :
1. kolom id_transaksi yang memiliki tipe data integer dengan panjang 255 yang merupakan sebuah primary key
2. kolom id_nasabah yang memiliki tipe data integer dengan panjang 255 dan merupakan sebuah Foreign Key yang menghubungkan kolom id_nasabah pada tabel ini dengan kolom id_nasabah yang merupakan sebuah primary key dengan tipe data integer dengan panjang 255 pada tabel nasabah_bank
3. kolom id_bank_tujuan yang memiliki tipe data integer dengan panjang 255 dan merupakan sebuah Foreign Key yang menghubungkan kolom id_bank pada tabel ini dengan kolom id_bank yang merupakan sebuah primary key dengan tipe data integer dengan panjang 255 pada tabel perusahaan_bank
4. kolom jenis_transaksi merupakan sebuah kolom attribut yang memiliki tipe data enum serta memuat pilihan 'Pembayaran', dan 'Transfer'.
5. kolom jumlah_transaksi merupakan sebuah kolom attribut yang memiliki tipe data decimal dengan panjang (19,4)
6. kolom keterangan merupakan sebuah kolom attribut yang memiliki tipe data varchar dengan panjang 25

![Gambarnya Ga Ada ya ? :V Mungkin kamu kurang beruntung !](https://github.com/KillerKing93/Laporan-Praktikum-3_Proyek-Pengenalan-Basis-Data_ERD/blob/main/Gambar/Tabel4_Transaksi_Relasi.png)
<br />
Gambar 8, Relasi Foreign Key di Dalam Tabel transaksi dengan Tabel Lain

Dari gambar di atas, dapat dilihat bahwa : 
1. Foreign Key id_nasabah merupakan sebuah primary key yang berasal dari kolom id_nasabah tabel nasabah_bank dari basis data erd_transaksi_di_bank
2. Foreign Key id_bank_tujuan merupakan sebuah primary key yang berasal dari kolom id_bank tabel perusahaan_bank dari basis data erd_transaksi_di_bank
<br />
<br /> 
