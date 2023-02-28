-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Feb 2023 pada 17.58
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rumahtahfidz`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_ayat`
--

CREATE TABLE `data_ayat` (
  `id_ayat` int(11) NOT NULL,
  `id_surah` int(11) NOT NULL,
  `no_ayat` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_murid`
--

CREATE TABLE `data_murid` (
  `id_murid` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama_murid` varchar(50) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `agama` varchar(30) NOT NULL,
  `no_telepon` int(15) NOT NULL,
  `nama_ibu` varchar(30) NOT NULL,
  `nama_ayah` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_surah`
--

CREATE TABLE `data_surah` (
  `id_surah` int(11) NOT NULL,
  `nama_surah` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_userlogin`
--

CREATE TABLE `data_userlogin` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `hak_akses` enum('admin','ustadz/ah','murid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_ustadz/ah`
--

CREATE TABLE `data_ustadz/ah` (
  `id_ustadz/ah` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama_ustadz/ah` varchar(50) NOT NULL,
  `nik_ustadz/ah` varchar(16) NOT NULL,
  `nip_ustadz/ah` varchar(30) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `agama` varchar(30) NOT NULL,
  `foto` varchar(30) NOT NULL,
  `jabatan` varchar(30) NOT NULL,
  `no_telepon` int(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `keterangan` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `id_hafalanayat`
--

CREATE TABLE `id_hafalanayat` (
  `id_hafalanayat` int(11) NOT NULL,
  `id_setorhafalan` int(11) NOT NULL,
  `id_ayat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `setor_hafalan`
--

CREATE TABLE `setor_hafalan` (
  `id_setorhafalan` int(11) NOT NULL,
  `id_ustadz/ah` int(11) NOT NULL,
  `id_murid` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_ayat`
--
ALTER TABLE `data_ayat`
  ADD PRIMARY KEY (`id_ayat`),
  ADD KEY `id_surah` (`id_surah`);

--
-- Indeks untuk tabel `data_murid`
--
ALTER TABLE `data_murid`
  ADD PRIMARY KEY (`id_murid`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `data_surah`
--
ALTER TABLE `data_surah`
  ADD PRIMARY KEY (`id_surah`);

--
-- Indeks untuk tabel `data_userlogin`
--
ALTER TABLE `data_userlogin`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `data_ustadz/ah`
--
ALTER TABLE `data_ustadz/ah`
  ADD PRIMARY KEY (`id_ustadz/ah`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `id_hafalanayat`
--
ALTER TABLE `id_hafalanayat`
  ADD PRIMARY KEY (`id_hafalanayat`),
  ADD KEY `id_setorhafalan` (`id_setorhafalan`),
  ADD KEY `id_ayat` (`id_ayat`);

--
-- Indeks untuk tabel `setor_hafalan`
--
ALTER TABLE `setor_hafalan`
  ADD PRIMARY KEY (`id_setorhafalan`),
  ADD KEY `id_ustadz/ah` (`id_ustadz/ah`),
  ADD KEY `id_murid` (`id_murid`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_ayat`
--
ALTER TABLE `data_ayat`
  MODIFY `id_ayat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `data_murid`
--
ALTER TABLE `data_murid`
  MODIFY `id_murid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `data_surah`
--
ALTER TABLE `data_surah`
  MODIFY `id_surah` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `data_ustadz/ah`
--
ALTER TABLE `data_ustadz/ah`
  MODIFY `id_ustadz/ah` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `id_hafalanayat`
--
ALTER TABLE `id_hafalanayat`
  MODIFY `id_hafalanayat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `setor_hafalan`
--
ALTER TABLE `setor_hafalan`
  MODIFY `id_setorhafalan` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `data_ayat`
--
ALTER TABLE `data_ayat`
  ADD CONSTRAINT `data_ayat_ibfk_1` FOREIGN KEY (`id_surah`) REFERENCES `data_surah` (`id_surah`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `data_userlogin`
--
ALTER TABLE `data_userlogin`
  ADD CONSTRAINT `data_userlogin_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `data_murid` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `data_ustadz/ah`
--
ALTER TABLE `data_ustadz/ah`
  ADD CONSTRAINT `data_ustadz/ah_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `data_userlogin` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `id_hafalanayat`
--
ALTER TABLE `id_hafalanayat`
  ADD CONSTRAINT `id_hafalanayat_ibfk_1` FOREIGN KEY (`id_setorhafalan`) REFERENCES `setor_hafalan` (`id_setorhafalan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_hafalanayat_ibfk_2` FOREIGN KEY (`id_ayat`) REFERENCES `data_ayat` (`id_ayat`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `setor_hafalan`
--
ALTER TABLE `setor_hafalan`
  ADD CONSTRAINT `setor_hafalan_ibfk_1` FOREIGN KEY (`id_ustadz/ah`) REFERENCES `data_ustadz/ah` (`id_ustadz/ah`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `setor_hafalan_ibfk_2` FOREIGN KEY (`id_murid`) REFERENCES `data_murid` (`id_murid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
