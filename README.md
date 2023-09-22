# Laporan-Praktikum-3_Proyek-Pengenalan-Basis-Data_ERD
-- ERD Transaksi sederhana antar bank

![Gambarnya Ga Ada ya ? :V Mungkin kamu kurang beruntung !](https://github.com/KillerKing93/Laporan-Praktikum-3_Proyek-Pengenalan-Basis-Data_ERD/blob/main/ERD%20Bank%20v2.drawio_v3.png)
Gambar 1
<br />
<br />
# Tabel ERD masing - masing entitas.
## TABLE ENTITAS NASABAH BANK
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

Membuat tabel nasabah_bank di phpMyAdmin sesuai dengan spesifikasi yang telah dibuat sebelumnya dengan keterangan kolom - kolom sebagai berikut :
1. kolom id_nasabah yang memiliki tipe data integer dengan panjang 255 yang merupakan sebuah primary key
2. kolom id_bank yang memiliki tipe data integer dengan panjang 255 dan merupakan sebuah Foreign key yang menghubungkan kolom id_bank pada tabel ini dengan kolom id_bank yang merupakan sebuah primary key dengan tipe data integer dengan panjang 255 pada tabel perusahaan_bank
3. nik merupakan sebuah kolom attribut dengan tipe data varchar dengan panjang 16
4. nama merupakan sebuah kolom attribut dengan tipe data varchar dengan panjang 55
5. jenis_kelamin merupakan sebuah kolom attribut yang memuat pilihan 'Laki - Laki' dan 'Perempuan"
6. alamat merupakan sebuah kolom attribut dengan tipe data varchar dengan panjang 60
7. email merupakan sebuah kolom attribut dengan tipe data varchar dengan panjang 60
8. nama_ibu merupakan sebuah kolom attribut dengan tipe data varchar dengan panjang 55
9. no_handphone merupakan sebuah kolom attribut dengan tipe data varchar dengan panjang 16
10. nama_ibu_dari_ibu merupakan sebuah kolom attribut dengan tipe data varchar dengan panjang 55

![Gambarnya Ga Ada ya ? :V Mungkin kamu kurang beruntung !](https://github.com/KillerKing93/Laporan-Praktikum-3_Proyek-Pengenalan-Basis-Data_ERD/blob/main/Gambar/Tabel2_Nasabah-Bank_Relasi.png)

Dari gambar di atas, dapat dilihat bahwa 
<br />
<br />

## TABLE ENTITAS REKENING BANK
| Name Field | Type | Length | Keterangan |
| --- | --- | --- | --- |
| id_rekening | int | 255 | Primary Key |
| id_nasabah | int | 255 | Foreign Key |
| id_bank | int | 255 | Foreign Key |
| saldo | decimal | 19,4 | |
| jenis_member | enum | | ('silver', 'gold', 'platinum')

## TABLE ENTITAS PERUSAHAAN BANK
| Name Field | Type | Length | Keterangan |
| --- | --- | --- | --- |
| id_bank | int | 255 | Primary Key |
| alamat_bank | varchar | 60 | |
| nama_pemilik | varchar | 55 | |

## TABLE TRANSAKSI NASABAH BANK DAN PERUSAHAAN BANK
| Name Field | Type | Length | Keterangan |
| --- | --- | --- | --- |
| id_transaksi | int | 255 | Primary Key |
| id_nasabah | int | 255 | Foreign Key |
| id_nasabah_tujuan | int | 255 | Foreign Key |
| id_bank_tujuan | int | 255 | Foreign Key |
| tanggal_transaksi | datetime | | |
| jenis_transaksi | enum | | ('Pembayaran', 'Transfer')
| jumlah_transaksi | decimal | 19,4 | |
| keterangan | varchar | 25 | |
<br />
<br /> 

# IMPLEMENTASI TABEL KE DALAM KOLOM MYSQL
## IMPLEMENTASI TABEL PERUSAHAAN BANK
Kita buat kolom sesuai dengan yang dispesifikan oleh tabel perusahaan bank

![Gambarnya Ga Ada ya ? :V Mungkin kamu kurang beruntung !](https://github.com/KillerKing93/Laporan-Praktikum-3_Proyek-Pengenalan-Basis-Data_ERD/blob/main/Gambar/1-Perusahaan-Bank_Creating.png)

Kemudian, Kita dapat melihat hasilnya di opsi bernama struktur

![Gambarnya Ga Ada ya ? :V Mungkin kamu kurang beruntung !](https://github.com/KillerKing93/Laporan-Praktikum-3_Proyek-Pengenalan-Basis-Data_ERD/blob/main/Gambar/1-Perusahaan-Bank_Table.png)



## IMPLEMENTASI TABEL REKENING BANK
Pertama, kita buat kolom sesuai dengan yang dispesifikan oleh tabel nasabah bank.

![Gambarnya Ga Ada ya ? :V Mungkin kamu kurang beruntung !](https://github.com/KillerKing93/Laporan-Praktikum-3_Proyek-Pengenalan-Basis-Data_ERD/blob/main/Gambar/3-Rekening-Bank_Creating.png)

Lalu di menu Struktur (Structure) tabel, kita buka menu tampilkan hubungan (Show Relation), dan kita modifikasi serta hubungkan foreign key yang dispesifikasikan oleh tabel nasabah bank.

![Gambarnya Ga Ada ya ? :V Mungkin kamu kurang beruntung !](https://github.com/KillerKing93/Laporan-Praktikum-3_Proyek-Pengenalan-Basis-Data_ERD/blob/main/Gambar/3-Rekening-Bank_ForeignKey.png)

Setelah modifikasi dan penghubungan foreign key berhasil dilakukan dengan benar, tampilan ini akan muncul.

![Gambarnya Ga Ada ya ? :V Mungkin kamu kurang beruntung !](https://github.com/KillerKing93/Laporan-Praktikum-3_Proyek-Pengenalan-Basis-Data_ERD/blob/main/Gambar/3-Rekening-Bank_ForeignKey_Successfull.png)

Kita dapat melihat hasil tabel yang telah kita selesaikan di menu struktur.

![Gambarnya Ga Ada ya ? :V Mungkin kamu kurang beruntung !](https://github.com/KillerKing93/Laporan-Praktikum-3_Proyek-Pengenalan-Basis-Data_ERD/blob/main/Gambar/3-Rekening-Bank_Table.png)

## IMPLEMENTASI TABEL TRANSAKSI
Pertama, kita buat kolom sesuai dengan yang dispesifikan oleh tabel nasabah bank.

![Gambarnya Ga Ada ya ? :V Mungkin kamu kurang beruntung !](https://github.com/KillerKing93/Laporan-Praktikum-3_Proyek-Pengenalan-Basis-Data_ERD/blob/main/Gambar/4-Transaksi_Creating.png)

Lalu di menu Struktur (Structure) tabel, kita buka menu tampilkan hubungan (Show Relation), dan kita modifikasi serta hubungkan foreign key yang dispesifikasikan oleh tabel nasabah bank.

![Gambarnya Ga Ada ya ? :V Mungkin kamu kurang beruntung !](https://github.com/KillerKing93/Laporan-Praktikum-3_Proyek-Pengenalan-Basis-Data_ERD/blob/main/Gambar/4-Transaksi_ForeignKey.png)

Setelah modifikasi dan penghubungan foreign key berhasil dilakukan dengan benar, tampilan ini akan muncul.

![Gambarnya Ga Ada ya ? :V Mungkin kamu kurang beruntung !](https://github.com/KillerKing93/Laporan-Praktikum-3_Proyek-Pengenalan-Basis-Data_ERD/blob/main/Gambar/4-Transaksi_ForeignKey_Successfull.png)

Kita dapat melihat hasil tabel yang telah kita selesaikan di menu struktur.

![Gambarnya Ga Ada ya ? :V Mungkin kamu kurang beruntung !](https://github.com/KillerKing93/Laporan-Praktikum-3_Proyek-Pengenalan-Basis-Data_ERD/blob/main/Gambar/4-Transaksi_Table.png)
