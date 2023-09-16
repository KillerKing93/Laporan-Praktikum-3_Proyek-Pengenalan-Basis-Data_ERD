# Laporan-Praktikum-3_Proyek-Pengenalan-Basis-Data_ERD
ERD Transaksi sederhana antar bank

![Gambarnya Ga Ada ya ? :V Mungkin kamu kurang beruntung !](https://github.com/KillerKing93/Laporan-Praktikum-3_Proyek-Pengenalan-Basis-Data_ERD/blob/main/ERD%20Bank%20v2.drawio.png)

# Tabel ERD masing - masing entitas.
## TABLE ENTITAS NASABAH BANK
| Name Field | Type | Length | Keterangan |
| --- | --- | --- | --- |
| id_nasabah | int | 255 | Primary Key |
| id_bank | int | 255 | Foreign Key |
| ktp | char | 16 | |
| nama | varchar | 55 | |
| jenis_kelamin | enum | | ('Laki - Laki', 'Perempuan') |
| alamat | varchar | 60 | |
| email | varchar | 60 | |
| nama_ibu | varchar | 55 | |
| no_handphone | varchar | 16 | |
| nama_ibu_dari_ibu | varchar | 55 | |

## TABLE ENTITAS REKENING BANK
| Name Field | Type | Length | Keterangan |
| --- | --- | --- | --- |
| id_rekening | int | 255 | Primary Key |
| id_nasabah | int | 255 | Foreign Key |
| id_bank | int | 255 | Foreign Key |
| saldo | decimal | 4 | |
| jenis_member | enum | | ('silver', 'gold', 'platinum')

## TABLE ENTITAS PERUSAHAAN BANK
| Name Field | Type | Length | Keterangan |
| --- | --- | --- | --- |
| id_bank | int | 255 | Primary Key |
| alamat_bank | varchar | 60 | |
| nama_pemilik | varchar | 55 | |

## TABLE RELASI ANTARA NASABAH BANK DAN PERUSAHAAN BANK
| Name Field | Type | Length | Keterangan |
| --- | --- | --- | --- |
| id_transaksi | int | 255 | Primary Key |
| id_nasabah | int | 255 | Foreign Key |
| id_bank | int | 255 | Foreign Key |
| id_nasabah_tujuan | int | 255 | Foreign Key |
| id_bank_tujuan | int | 255 | Foreign Key |
| tanggal_transaksi | datetime | | |
| jenis_transaksi | enum | | ('Pembayaran', 'Transfer')
| jumlah_transaksi | decimal | 4 | |
| Keterangan | varchar | 25 | |

# Hubungan ENTITAS
## ENTITAS NASABAH BANK MEMILIKI REKENING BANK
Entitas Nasabah Bank memiliki entitas Rekening Bank dengan relasi one to many dari entitas Nasabah Bank menuju Rekening Bank, sehingga primary key dari entitas Nasabah Bank akan tersemayam sebagai foreign key di entitas Rekening Bank.

## ENTITAS PERUSAHAAN BANK MENGELOLA ENTITAS REKENING BANK
Entitas Perusahaan Bank mengelola entitas Rekening Bank dengan relasi one to many dari entitas Perusahaan Bank menuju Rekening Bank, sehingga primary key dari entitas Perusahaan Bank akan tersemayam sebagai foreign key di entitas Rekening Bank.

## ENTITAS NASABAH BANK TRANSAKSI DENGAN ENTITAS PERUSAHAAN BANK
Entitas Nasabah Bank melakukan transaksi dengan entitas Perusahaan Bank dengan relasi many to many, sehingga akan terbuat table khusus yang akan memuat primary key dengan nama id_transaksi, foreign key id_nasabah dan id_bank yang melaksanakan transaksi, id_nasabah_tujuan yang merupakan id rekening dari bank yang ingin ditransfer yang merupakan sebuah foreign key di dalam tabel Transaksi, id_bank_tujuan yang merupakan id bank dari bank yang ingin ditransfer dan merupakan sebuah foreign key di dalam tabel Transaksi, tanggal terjadinya transaksi, jenis transaksi, jumlah transaksi yang dilakukan, dan keterangan tambahan pada saat proses transaksi.

