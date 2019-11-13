-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 13 Nov 2019 pada 13.45
-- Versi Server: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `maul_ta`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(10) NOT NULL,
  `id_mapel` int(10) NOT NULL,
  `sesi` varchar(10) NOT NULL,
  `ruang` varchar(20) NOT NULL,
  `ikut` varchar(10) NOT NULL,
  `susulan` varchar(10) NOT NULL,
  `no_susulan` text NOT NULL,
  `mulai` varchar(10) NOT NULL,
  `selesai` varchar(10) NOT NULL,
  `nama_proktor` varchar(50) NOT NULL,
  `nip_proktor` varchar(50) NOT NULL,
  `nama_pengawas` varchar(50) NOT NULL,
  `nip_pengawas` varchar(50) NOT NULL,
  `catatan` text NOT NULL,
  `tgl_ujian` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil_jawaban`
--

CREATE TABLE `hasil_jawaban` (
  `id_jawaban` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_soal` int(11) NOT NULL,
  `jawaban` char(1) NOT NULL,
  `jenis` int(1) NOT NULL,
  `esai` text NOT NULL,
  `nilai_esai` int(5) NOT NULL,
  `ragu` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hasil_jawaban`
--

INSERT INTO `hasil_jawaban` (`id_jawaban`, `id_siswa`, `id_mapel`, `id_soal`, `jawaban`, `jenis`, `esai`, `nilai_esai`, `ragu`) VALUES
(1, 1, 1, 1, 'A', 1, '', 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jawaban`
--

CREATE TABLE `jawaban` (
  `id_jawaban` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_soal` int(11) NOT NULL,
  `jawaban` char(1) NOT NULL,
  `jenis` int(1) NOT NULL,
  `esai` text NOT NULL,
  `nilai_esai` int(5) NOT NULL,
  `ragu` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jawaban`
--

INSERT INTO `jawaban` (`id_jawaban`, `id_siswa`, `id_mapel`, `id_soal`, `jawaban`, `jenis`, `esai`, `nilai_esai`, `ragu`) VALUES
(3, 2, 1, 1, 'A', 1, '', 0, 0),
(4, 2, 1, 2, 'A', 1, '', 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` varchar(11) NOT NULL,
  `level` varchar(20) NOT NULL,
  `nama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `level`, `nama`) VALUES
('7', 'mudah', 'Kelas 7'),
('8', 'sulit', 'Kelas 8');

-- --------------------------------------------------------

--
-- Struktur dari tabel `level`
--

CREATE TABLE `level` (
  `kode_level` varchar(5) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `level`
--

INSERT INTO `level` (`kode_level`, `keterangan`) VALUES
('1', 'mudah'),
('2', 'sulit');

-- --------------------------------------------------------

--
-- Struktur dari tabel `log`
--

CREATE TABLE `log` (
  `id_log` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `text` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `log`
--

INSERT INTO `log` (`id_log`, `id_siswa`, `type`, `text`, `date`) VALUES
(1, 1, 'login', 'masuk', '2019-11-01 09:43:45'),
(2, 1, 'logout', 'keluar', '2019-11-01 09:59:06'),
(3, 1, 'login', 'masuk', '2019-11-01 10:02:02'),
(4, 1, 'testongoing', 'sedang ujian', '2019-11-01 10:02:50'),
(5, 1, 'testongoing', 'sedang ujian', '2019-11-01 10:02:50'),
(6, 1, 'login', 'masuk', '2019-11-07 10:10:46'),
(7, 1, 'login', 'masuk', '2019-11-07 19:47:04'),
(8, 1, 'logout', 'keluar', '2019-11-07 20:23:09'),
(9, 1, 'logout', 'keluar', '2019-11-07 20:23:12'),
(10, 2, 'login', 'masuk', '2019-11-07 20:23:19'),
(11, 2, 'testongoing', 'sedang ujian', '2019-11-07 20:24:40'),
(12, 2, 'testongoing', 'sedang ujian', '2019-11-07 20:24:41'),
(13, 2, 'testongoing', 'sedang ujian', '2019-11-07 20:50:37'),
(14, 2, 'testongoing', 'sedang ujian', '2019-11-07 20:50:38'),
(15, 2, 'logout', 'keluar', '2019-11-07 21:34:07'),
(16, 1, 'login', 'masuk', '2019-11-13 08:10:10'),
(17, 1, 'logout', 'keluar', '2019-11-13 08:18:38'),
(18, 2, 'login', 'masuk', '2019-11-13 08:18:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id_log` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `ipaddress` varchar(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id_log`, `id_siswa`, `ipaddress`, `date`) VALUES
(2, 2, '', '2019-11-13 01:18:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapel`
--

CREATE TABLE `mapel` (
  `id_mapel` int(11) NOT NULL,
  `idpk` varchar(10) NOT NULL,
  `idguru` varchar(3) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jml_soal` int(5) NOT NULL,
  `jml_esai` int(5) NOT NULL,
  `tampil_pg` int(5) NOT NULL,
  `tampil_esai` int(5) NOT NULL,
  `bobot_pg` int(5) NOT NULL,
  `bobot_esai` int(5) NOT NULL,
  `level` varchar(5) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(2) NOT NULL,
  `statusujian` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mapel`
--

INSERT INTO `mapel` (`id_mapel`, `idpk`, `idguru`, `nama`, `jml_soal`, `jml_esai`, `tampil_pg`, `tampil_esai`, `bobot_pg`, `bobot_esai`, `level`, `kelas`, `date`, `status`, `statusujian`) VALUES
(1, '', '51', 'Bahasa Indonesia', 2, 0, 2, 0, 100, 0, '1', 'a:1:{i:0;s:1:"8";}', '2019-11-07 13:38:43', '1', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mata_pelajaran`
--

CREATE TABLE `mata_pelajaran` (
  `kode_mapel` varchar(20) NOT NULL,
  `nama_mapel` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mata_pelajaran`
--

INSERT INTO `mata_pelajaran` (`kode_mapel`, `nama_mapel`) VALUES
('1', 'Bahasa Indonesia'),
('2', 'IPA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `ujian_mulai` varchar(20) NOT NULL,
  `ujian_berlangsung` varchar(20) NOT NULL,
  `ujian_selesai` varchar(20) NOT NULL,
  `jml_benar` int(10) NOT NULL,
  `jml_salah` int(10) NOT NULL,
  `nilai_esai` varchar(10) NOT NULL,
  `skor` varchar(10) NOT NULL,
  `total` varchar(10) NOT NULL,
  `status` int(1) NOT NULL,
  `ipaddress` varchar(20) NOT NULL,
  `hasil` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `nilai`
--

INSERT INTO `nilai` (`id_nilai`, `id_mapel`, `id_siswa`, `ujian_mulai`, `ujian_berlangsung`, `ujian_selesai`, `jml_benar`, `jml_salah`, `nilai_esai`, `skor`, `total`, `status`, `ipaddress`, `hasil`) VALUES
(3, 1, 2, '2019-11-07 20:50:37', '2019-11-07 20:50:52', '2019-11-07 20:50:51', 2, -1, '', '200.00', '200.00', 0, '::1', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengacak`
--

CREATE TABLE `pengacak` (
  `id_pengacak` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_soal` longtext NOT NULL,
  `id_esai` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengacak`
--

INSERT INTO `pengacak` (`id_pengacak`, `id_siswa`, `id_mapel`, `id_soal`, `id_esai`) VALUES
(4, 90, 1, '4,5,6,1,2,3,7,8,9,10,', '13,14,15,12,11,'),
(6, 1, 3, '51,57,58,54,59,55,56,52,60,53,', '61,62,63,64,65,'),
(7, 0, 3, '51,57,58,54,59,55,56,52,60,53,', '61,62,63,64,65,'),
(9, 3, 3, '86,76,103,85,71,94,97,70,88,89,68,101,87,102,93,92,99,95,83,75,82,67,84,80,77,91,96,73,81,104,100,98,90,69,66,74,72,105,78,79,', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengacakopsi`
--

CREATE TABLE `pengacakopsi` (
  `id_pengacak` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_soal` longtext NOT NULL,
  `id_esai` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengacakopsi`
--

INSERT INTO `pengacakopsi` (`id_pengacak`, `id_siswa`, `id_mapel`, `id_soal`, `id_esai`) VALUES
(1, 108, 4, 'D,A,B,C,E,E,B,D,C,A,E,C,B,D,A,D,C,B,E,A,E,D,A,B,C,E,B,D,C,A,A,E,C,B,D,C,D,E,B,A,A,C,B,E,D,B,E,A,C,D,', '111,112,113,114,115,'),
(2, 87, 2, 'C,B,D,E,A,D,C,B,A,E,A,B,D,C,E,D,E,B,C,A,A,B,D,E,C,C,D,E,B,A,D,E,A,B,C,C,D,E,A,B,C,D,B,E,A,B,C,D,A,E,A,E,B,D,C,D,E,A,C,B,C,E,A,B,D,C,A,D,E,B,E,B,C,A,D,B,C,A,D,E,C,A,E,B,D,A,E,B,D,C,C,D,E,B,A,D,C,E,A,B,C,B,D,E,A,B,A,D,E,C,D,E,A,B,C,C,A,E,D,B,A,E,B,D,C,', ''),
(3, 88, 2, 'E,A,D,C,B,C,A,D,E,B,E,B,C,D,A,B,E,D,C,A,B,C,E,A,D,E,D,B,A,C,C,A,E,B,D,E,C,B,D,A,B,A,C,E,D,B,A,E,C,D,B,D,C,A,E,B,D,C,E,A,B,C,E,A,D,B,D,C,E,A,B,D,C,A,E,E,D,A,B,C,E,B,D,C,A,A,D,C,B,E,B,A,D,E,C,A,C,D,B,E,D,B,A,E,C,A,B,E,C,D,C,A,D,B,E,C,E,B,A,D,B,A,D,E,C,', ''),
(4, 90, 1, 'B,E,D,A,C,E,D,B,C,A,B,E,D,C,A,E,D,C,B,A,B,A,E,C,D,E,C,A,B,D,A,C,B,D,E,C,B,A,D,E,D,A,E,B,C,A,D,E,C,B,', '13,14,15,12,11,'),
(5, 1, 3, '', ''),
(6, 1, 3, 'A,C,B,D,E,C,E,A,B,D,E,C,D,A,B,C,E,D,B,A,E,B,A,C,D,C,D,A,B,E,D,A,C,E,B,C,D,A,E,B,D,A,B,E,C,C,E,A,B,D,', '61,62,63,64,65,'),
(7, 0, 3, 'B,E,D,C,A,E,D,C,B,A,B,A,E,C,D,E,C,A,B,D,A,C,B,D,E,C,B,A,D,E,D,A,E,B,C,A,D,E,C,B,C,D,A,E,B,E,B,A,C,D,', '61,62,63,64,65,'),
(9, 3, 3, 'B,E,C,A,D,C,B,A,D,E,C,D,B,E,A,B,A,C,E,D,A,E,D,B,C,D,B,A,E,C,E,B,A,D,C,A,C,B,E,D,D,B,C,A,E,A,D,C,E,B,A,C,B,E,D,D,B,A,C,E,C,E,B,D,A,E,A,C,D,B,E,C,D,A,B,C,A,D,E,B,B,D,C,E,A,E,D,B,A,C,C,A,B,D,E,B,C,A,D,E,A,C,B,E,D,C,B,D,A,E,B,C,E,D,A,E,C,B,A,D,A,B,C,D,E,B,E,C,A,D,D,C,E,B,A,E,C,A,B,D,B,C,D,E,A,C,E,B,A,D,E,B,C,A,D,C,E,D,B,A,E,A,B,C,D,B,E,A,C,D,D,B,C,E,A,D,B,E,A,C,A,E,D,C,B,D,B,C,E,A,C,E,D,B,A,C,E,A,D,B,', ''),
(10, 62, 11, 'D,B,A,C,E,D,C,B,E,A,C,E,D,A,B,C,A,E,D,B,A,D,C,E,B,A,B,C,D,E,E,D,C,A,B,A,E,B,D,C,E,D,A,B,C,A,D,C,B,E,E,B,D,C,A,D,A,B,C,E,E,A,C,D,B,B,C,E,D,A,D,A,B,E,C,A,C,D,E,B,A,B,E,C,D,E,D,A,B,C,A,C,B,E,D,C,E,B,D,A,C,E,B,D,A,E,C,D,B,A,E,D,A,B,C,B,C,D,E,A,E,C,D,B,A,C,A,D,B,E,C,D,E,B,A,C,D,A,E,B,B,C,E,A,D,C,E,D,B,A,A,B,D,E,C,E,A,C,B,D,D,C,E,B,A,E,D,C,A,B,D,B,E,A,C,D,B,E,A,C,C,A,E,D,B,A,B,D,C,E,C,E,D,A,B,C,A,E,D,B,', ''),
(13, 3, 14, 'B,A,D,C,C,B,D,A,C,D,B,A,A,D,C,B,D,A,C,B,C,A,B,D,A,B,C,D,B,C,D,A,A,D,B,C,A,B,C,D,B,A,D,C,B,D,A,C,A,B,D,C,C,A,B,D,D,C,B,A,C,B,D,A,C,D,B,A,D,B,A,C,D,C,B,A,B,A,D,C,D,C,A,B,A,D,C,B,C,D,B,A,A,B,C,D,D,A,B,C,B,D,A,C,D,B,C,A,A,B,D,C,A,D,C,B,C,D,B,A,C,D,A,B,C,A,B,D,B,C,D,A,C,D,B,A,B,C,A,D,C,D,B,A,C,D,A,B,B,A,D,C,C,B,D,A,D,C,A,B,', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengawas`
--

CREATE TABLE `pengawas` (
  `id_pengawas` int(11) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` text NOT NULL,
  `level` varchar(10) NOT NULL,
  `no_ktp` varchar(16) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `no_hp` varchar(13) NOT NULL,
  `email` varchar(50) NOT NULL,
  `alamat_jalan` varchar(255) NOT NULL,
  `rt_rw` varchar(8) NOT NULL,
  `dusun` varchar(50) NOT NULL,
  `kelurahan` varchar(50) NOT NULL,
  `kecamatan` varchar(30) NOT NULL,
  `kode_pos` int(6) NOT NULL,
  `nuptk` varchar(20) NOT NULL,
  `bidang_studi` varchar(50) NOT NULL,
  `jenis_ptk` varchar(50) NOT NULL,
  `tgs_tambahan` varchar(50) NOT NULL,
  `status_pegawai` varchar(50) NOT NULL,
  `status_aktif` varchar(20) NOT NULL,
  `status_nikah` varchar(20) NOT NULL,
  `sumber_gaji` varchar(30) NOT NULL,
  `ahli_lab` varchar(10) NOT NULL,
  `nama_ibu` varchar(40) NOT NULL,
  `nama_suami` varchar(50) NOT NULL,
  `nik_suami` varchar(20) NOT NULL,
  `pekerjaan` varchar(20) NOT NULL,
  `tmt` date NOT NULL,
  `keahlian_isyarat` varchar(10) NOT NULL,
  `kewarganegaraan` varchar(10) NOT NULL,
  `npwp` varchar(16) NOT NULL,
  `foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengawas`
--

INSERT INTO `pengawas` (`id_pengawas`, `nip`, `nama`, `jabatan`, `username`, `password`, `level`, `no_ktp`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `agama`, `no_hp`, `email`, `alamat_jalan`, `rt_rw`, `dusun`, `kelurahan`, `kecamatan`, `kode_pos`, `nuptk`, `bidang_studi`, `jenis_ptk`, `tgs_tambahan`, `status_pegawai`, `status_aktif`, `status_nikah`, `sumber_gaji`, `ahli_lab`, `nama_ibu`, `nama_suami`, `nik_suami`, `pekerjaan`, `tmt`, `keahlian_isyarat`, `kewarganegaraan`, `npwp`, `foto`) VALUES
(9, '-', 'administrator', '', 'admin', '$2y$10$3fVC8VJfm8ElEv6PNLT2R.XalOF.sFq7TOgJE54p5KQm2oL/0N1Im', 'admin', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', ''),
(41, '-', 'Pajar Sidik Nurfakhri', '', 'pajarsidikn', '123456', 'guru', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', ''),
(50, '-', 'Ruli Syahruli, S.Pd', '', 'ruli', '123456', 'guru', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', ''),
(51, '10992833', 'Agus Prasetyo, S.Pd', '', 'agus', 'agus', 'guru', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id_pengumuman` int(5) NOT NULL,
  `type` varchar(30) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `user` int(3) NOT NULL,
  `text` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pk`
--

CREATE TABLE `pk` (
  `id_pk` varchar(10) NOT NULL,
  `program_keahlian` varchar(50) NOT NULL,
  `kode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruang`
--

CREATE TABLE `ruang` (
  `kode_ruang` varchar(10) NOT NULL,
  `keterangan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ruang`
--

INSERT INTO `ruang` (`kode_ruang`, `keterangan`) VALUES
('1', 'kelas 9a');

-- --------------------------------------------------------

--
-- Struktur dari tabel `savsoft_options`
--

CREATE TABLE `savsoft_options` (
  `oid` int(11) NOT NULL,
  `qid` int(11) NOT NULL,
  `q_option` text NOT NULL,
  `q_option_match` varchar(1000) DEFAULT NULL,
  `score` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `savsoft_qbank`
--

CREATE TABLE `savsoft_qbank` (
  `qid` int(11) NOT NULL,
  `question_type` varchar(100) NOT NULL DEFAULT 'Multiple Choice Single Answer',
  `question` text NOT NULL,
  `description` text NOT NULL,
  `cid` int(11) NOT NULL,
  `lid` int(11) NOT NULL,
  `no_time_served` int(11) NOT NULL DEFAULT '0',
  `no_time_corrected` int(11) NOT NULL DEFAULT '0',
  `no_time_incorrected` int(11) NOT NULL DEFAULT '0',
  `no_time_unattempted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `server`
--

CREATE TABLE `server` (
  `kode_server` varchar(20) NOT NULL,
  `nama_server` varchar(30) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `server`
--

INSERT INTO `server` (`kode_server`, `nama_server`, `status`) VALUES
('R1', 'SERVER R1', 'aktif'),
('R2', 'SERVER R2', 'aktif'),
('ONLINE', 'ONLINE', 'aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sesi`
--

CREATE TABLE `sesi` (
  `kode_sesi` varchar(10) NOT NULL,
  `nama_sesi` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sesi`
--

INSERT INTO `sesi` (`kode_sesi`, `nama_sesi`) VALUES
('1', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `session`
--

CREATE TABLE `session` (
  `id` int(11) NOT NULL,
  `session_time` varchar(10) NOT NULL,
  `session_hash` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `session`
--

INSERT INTO `session` (`id`, `session_time`, `session_hash`) VALUES
(1, '1447610188', '$2y$10$dt9BTs7FlTXgpactflaXPOSVWrs.wurWsKBGv18JkzolJmHZOj.B.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting`
--

CREATE TABLE `setting` (
  `id_setting` int(11) NOT NULL,
  `aplikasi` varchar(100) NOT NULL,
  `kode_sekolah` varchar(10) NOT NULL,
  `sekolah` varchar(50) NOT NULL,
  `jenjang` varchar(5) NOT NULL,
  `kepsek` varchar(50) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `kecamatan` varchar(50) NOT NULL,
  `kota` varchar(30) NOT NULL,
  `telp` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `web` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `logo` text NOT NULL,
  `header` text NOT NULL,
  `header_kartu` text NOT NULL,
  `nama_ujian` text NOT NULL,
  `versi` varchar(10) NOT NULL,
  `ip_server` varchar(100) NOT NULL,
  `waktu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `setting`
--

INSERT INTO `setting` (`id_setting`, `aplikasi`, `kode_sekolah`, `sekolah`, `jenjang`, `kepsek`, `nip`, `alamat`, `kecamatan`, `kota`, `telp`, `fax`, `web`, `email`, `logo`, `header`, `header_kartu`, `nama_ujian`, `versi`, `ip_server`, `waktu`) VALUES
(1, 'UJIANKU', 'K123', 'SMP ISLAM HASANUDDIN', 'SMP', '', '-', 'IO : 503.15/015/IV/SK-SMK/BPMPPT/2013; NPSN: 69787351 ; NSS : 402022210005<br />\r\nJL.Raya MulyoAgung Dau<br />\r\n', 'MulyoAgung', 'Malang', '021 123 123 123', '', '', 'arespiha@gmail.com', 'dist/img/logo43.png', '', 'KARTU PESERTA\nUJIAN SEKOLAH BERBASIS KOMPUTER', 'UJIAN SEKOLAH', '2.4', 'http://192.168.0.200/candycbt', 'Asia/Jakarta');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL,
  `id_kelas` varchar(11) NOT NULL,
  `idpk` varchar(10) NOT NULL,
  `nis` varchar(30) NOT NULL,
  `no_peserta` varchar(30) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `level` varchar(5) NOT NULL,
  `ruang` varchar(10) NOT NULL,
  `sesi` int(2) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(30) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `agama` varchar(10) NOT NULL,
  `kebutuhan_khusus` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `rt` varchar(5) NOT NULL,
  `rw` varchar(5) NOT NULL,
  `dusun` varchar(100) NOT NULL,
  `kelurahan` varchar(100) NOT NULL,
  `kecamatan` varchar(100) NOT NULL,
  `kode_pos` int(10) NOT NULL,
  `jenis_tinggal` varchar(100) NOT NULL,
  `alat_transportasi` varchar(100) NOT NULL,
  `hp` varchar(15) NOT NULL,
  `email` varchar(150) NOT NULL,
  `skhun` int(11) NOT NULL,
  `no_kps` varchar(50) NOT NULL,
  `nama_ayah` varchar(150) NOT NULL,
  `tahun_lahir_ayah` int(4) NOT NULL,
  `pendidikan_ayah` varchar(50) NOT NULL,
  `pekerjaan_ayah` varchar(100) NOT NULL,
  `penghasilan_ayah` varchar(100) NOT NULL,
  `nohp_ayah` varchar(15) NOT NULL,
  `nama_ibu` varchar(150) NOT NULL,
  `tahun_lahir_ibu` int(4) NOT NULL,
  `pendidikan_ibu` varchar(50) NOT NULL,
  `pekerjaan_ibu` varchar(100) NOT NULL,
  `penghasilan_ibu` varchar(100) NOT NULL,
  `nohp_ibu` int(15) NOT NULL,
  `nama_wali` varchar(150) NOT NULL,
  `tahun_lahir_wali` int(4) NOT NULL,
  `pendidikan_wali` varchar(50) NOT NULL,
  `pekerjaan_wali` varchar(100) NOT NULL,
  `penghasilan_wali` varchar(50) NOT NULL,
  `angkatan` int(5) NOT NULL,
  `nisn` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `id_kelas`, `idpk`, `nis`, `no_peserta`, `nama`, `level`, `ruang`, `sesi`, `username`, `password`, `foto`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `agama`, `kebutuhan_khusus`, `alamat`, `rt`, `rw`, `dusun`, `kelurahan`, `kecamatan`, `kode_pos`, `jenis_tinggal`, `alat_transportasi`, `hp`, `email`, `skhun`, `no_kps`, `nama_ayah`, `tahun_lahir_ayah`, `pendidikan_ayah`, `pekerjaan_ayah`, `penghasilan_ayah`, `nohp_ayah`, `nama_ibu`, `tahun_lahir_ibu`, `pendidikan_ibu`, `pekerjaan_ibu`, `penghasilan_ibu`, `nohp_ibu`, `nama_wali`, `tahun_lahir_wali`, `pendidikan_wali`, `pekerjaan_wali`, `penghasilan_wali`, `angkatan`, `nisn`) VALUES
(1, '7', '', '19045', '1', 'muhammad maulana rosidi', '1', '1', 1, 'maulana', 'maulana', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(2, '8', '', '19203', '9', 'adam alis', '2', '1', 1, 'adam', 'alis', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `soal`
--

CREATE TABLE `soal` (
  `id_soal` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `nomor` int(5) NOT NULL,
  `soal` longtext NOT NULL,
  `jenis` int(1) NOT NULL,
  `pilA` longtext NOT NULL,
  `pilB` longtext NOT NULL,
  `pilC` longtext NOT NULL,
  `pilD` longtext NOT NULL,
  `pilE` longtext NOT NULL,
  `jawaban` varchar(1) NOT NULL,
  `file` text,
  `file1` text,
  `fileA` text,
  `fileB` text,
  `fileC` text,
  `fileD` text,
  `fileE` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `soal`
--

INSERT INTO `soal` (`id_soal`, `id_mapel`, `nomor`, `soal`, `jenis`, `pilA`, `pilB`, `pilC`, `pilD`, `pilE`, `jawaban`, `file`, `file1`, `fileA`, `fileB`, `fileC`, `fileD`, `fileE`) VALUES
(1, 1, 1, '<p>aapa maksud dari black panter</p>', 1, '<p>harimau hitam</p>', '<p>harimau belang</p>', '<p>hitam belang</p>\r\n<p>&nbsp;</p>', '<p>apa aja dah</p>', '', 'A', '', '', '', '', '', '', NULL),
(2, 1, 2, '<p>persamaan prosa</p>', 1, '<p>kosa kata</p>', '<p>apa itu</p>', '<p>tisak </p>\r\n<p>&nbsp;</p>', '<p>apa aja dah</p>', '', 'A', '', '', '', '', '', '', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `token`
--

CREATE TABLE `token` (
  `id_token` int(11) NOT NULL,
  `token` varchar(6) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `masa_berlaku` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `token`
--

INSERT INTO `token` (`id_token`, `token`, `time`, `masa_berlaku`) VALUES
(1, 'WLPWAC', '2019-11-07 14:40:29', '00:15:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ujian`
--

CREATE TABLE `ujian` (
  `id_ujian` int(5) NOT NULL,
  `id_pk` varchar(10) NOT NULL,
  `id_guru` int(5) NOT NULL,
  `id_mapel` int(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jml_soal` int(5) NOT NULL,
  `jml_esai` int(5) NOT NULL,
  `bobot_pg` int(5) NOT NULL,
  `bobot_esai` int(5) NOT NULL,
  `tampil_pg` int(5) NOT NULL,
  `tampil_esai` int(5) NOT NULL,
  `lama_ujian` int(5) NOT NULL,
  `tgl_ujian` datetime NOT NULL,
  `tgl_selesai` datetime NOT NULL,
  `waktu_ujian` time NOT NULL,
  `selesai_ujian` time NOT NULL,
  `level` varchar(5) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `sesi` varchar(1) NOT NULL,
  `acak` int(1) NOT NULL,
  `token` int(1) NOT NULL,
  `status` int(3) NOT NULL,
  `hasil` int(2) NOT NULL,
  `proktor` varchar(30) NOT NULL,
  `pengawas` varchar(30) NOT NULL,
  `nip_pengawas` varchar(30) NOT NULL,
  `catatan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ujian`
--

INSERT INTO `ujian` (`id_ujian`, `id_pk`, `id_guru`, `id_mapel`, `nama`, `jml_soal`, `jml_esai`, `bobot_pg`, `bobot_esai`, `tampil_pg`, `tampil_esai`, `lama_ujian`, `tgl_ujian`, `tgl_selesai`, `waktu_ujian`, `selesai_ujian`, `level`, `kelas`, `sesi`, `acak`, `token`, `status`, `hasil`, `proktor`, `pengawas`, `nip_pengawas`, `catatan`) VALUES
(8, '', 51, 1, '', 2, 0, 100, 0, 2, 0, 3, '2019-11-13 09:00:00', '2019-11-13 10:00:00', '08:00:00', '00:00:00', '1', 'a:1:{i:0;s:1:"8";}', '1', 1, 1, 1, 1, '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `hasil_jawaban`
--
ALTER TABLE `hasil_jawaban`
  ADD PRIMARY KEY (`id_jawaban`);

--
-- Indexes for table `jawaban`
--
ALTER TABLE `jawaban`
  ADD PRIMARY KEY (`id_jawaban`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`kode_level`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id_log`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_log`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indexes for table `mata_pelajaran`
--
ALTER TABLE `mata_pelajaran`
  ADD PRIMARY KEY (`kode_mapel`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indexes for table `pengacak`
--
ALTER TABLE `pengacak`
  ADD PRIMARY KEY (`id_pengacak`);

--
-- Indexes for table `pengacakopsi`
--
ALTER TABLE `pengacakopsi`
  ADD PRIMARY KEY (`id_pengacak`);

--
-- Indexes for table `pengawas`
--
ALTER TABLE `pengawas`
  ADD PRIMARY KEY (`id_pengawas`);

--
-- Indexes for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id_pengumuman`);

--
-- Indexes for table `pk`
--
ALTER TABLE `pk`
  ADD PRIMARY KEY (`id_pk`);

--
-- Indexes for table `ruang`
--
ALTER TABLE `ruang`
  ADD PRIMARY KEY (`kode_ruang`);

--
-- Indexes for table `savsoft_options`
--
ALTER TABLE `savsoft_options`
  ADD PRIMARY KEY (`oid`);

--
-- Indexes for table `savsoft_qbank`
--
ALTER TABLE `savsoft_qbank`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `sesi`
--
ALTER TABLE `sesi`
  ADD PRIMARY KEY (`kode_sesi`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `soal`
--
ALTER TABLE `soal`
  ADD PRIMARY KEY (`id_soal`);

--
-- Indexes for table `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`id_token`);

--
-- Indexes for table `ujian`
--
ALTER TABLE `ujian`
  ADD PRIMARY KEY (`id_ujian`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hasil_jawaban`
--
ALTER TABLE `hasil_jawaban`
  MODIFY `id_jawaban` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `jawaban`
--
ALTER TABLE `jawaban`
  MODIFY `id_jawaban` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id_mapel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pengacak`
--
ALTER TABLE `pengacak`
  MODIFY `id_pengacak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `pengacakopsi`
--
ALTER TABLE `pengacakopsi`
  MODIFY `id_pengacak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `pengawas`
--
ALTER TABLE `pengawas`
  MODIFY `id_pengawas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id_pengumuman` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `savsoft_options`
--
ALTER TABLE `savsoft_options`
  MODIFY `oid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `savsoft_qbank`
--
ALTER TABLE `savsoft_qbank`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id_setting` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `soal`
--
ALTER TABLE `soal`
  MODIFY `id_soal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `token`
--
ALTER TABLE `token`
  MODIFY `id_token` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ujian`
--
ALTER TABLE `ujian`
  MODIFY `id_ujian` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
