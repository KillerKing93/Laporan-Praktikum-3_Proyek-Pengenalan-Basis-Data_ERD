-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Sep 2023 pada 14.28
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `erd_transaksi_di_bank`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `nasabah_bank`
--

CREATE TABLE `nasabah_bank` (
  `id_nasabah` int(255) NOT NULL,
  `id_bank` int(255) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `nama` varchar(55) NOT NULL,
  `jenis_kelamin` enum('Laki - Laki','Perempuan') NOT NULL,
  `alamat` int(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `nama_ibu` varchar(55) NOT NULL,
  `no_handphone` varchar(16) NOT NULL,
  `nama_ibu_dari_ibu` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `perusahaan_bank`
--

CREATE TABLE `perusahaan_bank` (
  `id_bank` int(255) NOT NULL,
  `alamat_bank` varchar(60) NOT NULL,
  `nama_pemilik` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekening_bank`
--

CREATE TABLE `rekening_bank` (
  `id_rekening` int(255) NOT NULL,
  `id_nasabah` int(255) NOT NULL,
  `id_bank` int(255) NOT NULL,
  `saldo` decimal(19,4) NOT NULL,
  `jenis_member` enum('silver','gold','platinum') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(255) NOT NULL,
  `id_nasabah` int(255) NOT NULL,
  `id_bank_tujuan` int(255) NOT NULL,
  `tanggal_transaksi` datetime NOT NULL,
  `jenis_transaksi` enum('Pembayaran','Transfer') NOT NULL,
  `jumlah transaksi` decimal(19,4) NOT NULL,
  `keterangan` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `nasabah_bank`
--
ALTER TABLE `nasabah_bank`
  ADD PRIMARY KEY (`id_nasabah`),
  ADD KEY `ForeignKey` (`id_bank`);

--
-- Indeks untuk tabel `perusahaan_bank`
--
ALTER TABLE `perusahaan_bank`
  ADD PRIMARY KEY (`id_bank`);

--
-- Indeks untuk tabel `rekening_bank`
--
ALTER TABLE `rekening_bank`
  ADD PRIMARY KEY (`id_rekening`),
  ADD KEY `ForeignKey1` (`id_bank`),
  ADD KEY `ForeignKey2` (`id_nasabah`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `ForeignKey_Transaksi-1` (`id_nasabah`),
  ADD KEY `ForeignKey_Transaksi-2` (`id_bank_tujuan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `nasabah_bank`
--
ALTER TABLE `nasabah_bank`
  MODIFY `id_nasabah` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `perusahaan_bank`
--
ALTER TABLE `perusahaan_bank`
  MODIFY `id_bank` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `rekening_bank`
--
ALTER TABLE `rekening_bank`
  MODIFY `id_rekening` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(255) NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `nasabah_bank`
--
ALTER TABLE `nasabah_bank`
  ADD CONSTRAINT `ForeignKey` FOREIGN KEY (`id_bank`) REFERENCES `perusahaan_bank` (`id_bank`);

--
-- Ketidakleluasaan untuk tabel `rekening_bank`
--
ALTER TABLE `rekening_bank`
  ADD CONSTRAINT `ForeignKey1` FOREIGN KEY (`id_bank`) REFERENCES `perusahaan_bank` (`id_bank`),
  ADD CONSTRAINT `ForeignKey2` FOREIGN KEY (`id_nasabah`) REFERENCES `nasabah_bank` (`id_nasabah`);

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `ForeignKey_Transaksi-1` FOREIGN KEY (`id_nasabah`) REFERENCES `nasabah_bank` (`id_nasabah`),
  ADD CONSTRAINT `ForeignKey_Transaksi-2` FOREIGN KEY (`id_bank_tujuan`) REFERENCES `perusahaan_bank` (`id_bank`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
