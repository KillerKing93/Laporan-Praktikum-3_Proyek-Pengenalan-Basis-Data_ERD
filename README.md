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

# Hubungan ENTITAS
## ENTITAS NASABAH BANK MEMILIKI REKENING BANK
Entitas Nasabah Bank memiliki entitas Rekening Bank dengan relasi one to many dari entitas Nasabah Bank menuju Rekening Bank, sehingga primary key dari entitas Nasabah Bank akan tersemayam sebagai foreign key di entitas Rekening Bank. primary key dari PERUSAHAAN BANK akan tersemayam di dalam entitas.

## ENTITAS PERUSAHAAN BANK MENGELOLA ENTITAS REKENING BANK
Entitas Perusahaan Bank mengelola entitas Rekening Bank dengan relasi one to many dari entitas Perusahaan Bank menuju Rekening Bank, sehingga primary key dari entitas Perusahaan Bank akan tersemayam sebagai foreign key di entitas Rekening Bank.

## ENTITAS NASABAH BANK TRANSAKSI DENGAN ENTITAS PERUSAHAAN BANK
Entitas Nasabah Bank melakukan transaksi dengan entitas Perusahaan Bank dengan relasi many to many, sehingga salah satu antara entitas Nasabah Bank dan entitas Perusahaan Bank wajib memiliki primary key dari salah satu entitas yang akan menjadi foreign key di dalam entitas tersebut. Dan karena terjadi hubungan many to many, akan mengakibatkan terbuatnya table khusus yang akan memuat primary key dengan nama id_transaksi, foreign key id_nasabah yang melaksanakan transaksi, id_nasabah_tujuan dan id_bank yang ingin ditransfer yang merupakan sebuah foreign key di dalam tabel Transaksi, tanggal terjadinya transaksi, jenis transaksi, jumlah transaksi yang dilakukan, dan keterangan tambahan pada saat proses transaksi.

# CARA KERJA DARI KESELURUHAN SISTEM
1. Nasabah Bank dapat memiliki banyak rekening bank dari sebuah perusahaan bank dari rekening bank yang bersangkutan.
2. Nasabah bank ini dapat melakukan transaksi seperti pembayaran, transfer, dan sebagainya dengan perusahaan bank lain yang nanti catatan seperti id_transaksi, id_nasabah yang melakukan transaksi, id_nasabah_tujuan dan id_bank_tujuan transaksi, dan keterangan akan disimpan oleh sistem pada tabel yang terpisah. Hal ini dikarenakan oleh hubungan relasi transaksi ini yang bersifat many to many. 
3. Transaksi – transaksi ini nantinya akan diolah oleh perusahaan bank yang secara langsung mengelola rekening bank dari nasabah bank yang bersangkutan dan kemudian memproses transaksi tersebut.
