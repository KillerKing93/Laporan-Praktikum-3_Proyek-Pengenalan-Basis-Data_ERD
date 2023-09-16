# Laporan-Praktikum-3_Proyek-Pengenalan-Basis-Data_ERD
ERD Transaksi sederhana antar bank

# Tabel ERD masing - masing entitas.
## ENTITAS NASABAH BANK
| Name Field | Type | Length | Keterangan |
| --- | --- | --- | --- |
| id_nasabah | int | 255 | Primary Key |
| ktp | char | 16 | |
| nama | varchar | 55 | |
| jenis_kelamin | enum | | ('Laki - Laki', 'Perempuan') |
| alamat | varchar | 60 | |
| email | varchar | 60 | |
| nama_ibu | varchar | 55 | |
| no_handphone | varchar | 16 | |
| nama_ibu_dari_ibu | varchar | 55 | |

## ENTITAS REKENING BANK
