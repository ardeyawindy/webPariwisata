-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2022 at 09:06 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uas202410101021`
--

-- --------------------------------------------------------

--
-- Table structure for table `destinasi`
--

CREATE TABLE `destinasi` (
  `id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL,
  `jam_buka` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `destinasi`
--

INSERT INTO `destinasi` (`id`, `kategori_id`, `image`, `nama`, `lokasi`, `harga`, `jam_buka`, `deskripsi`) VALUES
(66, 4, 'img/asmara.jpg', 'Teluk Asmara beach', 'Tambak, Sitiarjo, Malang, East Java, Indonesia', 13000, '24 jam', 'Pantai Teluk Asmara merupakan pantai yang menawarkan keindahan alam yang masih sangat asri.Gugusan pulau-pulau yang ada di sekitarnya menjadi daya tarik tersendiri bahkan tidak kalah dengan pemandangan Raja Ampat.'),
(67, 1, 'img/papuma.jpg', 'Papuma beach', 'Desa Lojejer, Kecamatan Wuluhan, Kabupaten Jember.', 15000, '24 jam', 'Pantai Papuma adalah sebuah pantai yang menjadi tempat wisata di Kabupaten Jember, Provinsi Jawa Timur, Indonesia. Nama Papuma sendiri sebenarnya adalah sebuah singkatan dari “Pasir Putih Malikan. Pantai papuma berada di Desa Lojejer, Kecamatan Wuluhan, Kabupaten Jember.'),
(68, 1, 'img/merak.jpg', 'Kondang Merak beach', 'Desa Sumberbening, Kecamatan Bantur, Kabupaten Malang, Jawa Timur', 10000, '24 jam', 'Pantai Kondang Merak adalah sebuah pantai di pesisir selatan yang terletak di tepi Samudera Indonesia secara administratif berada di Desa Sumberbening, Kecamatan Bantur, Kabupaten Malang, Jawa Timur'),
(69, 1, 'img/wedi.jpg', 'Wedi Klopo beach', 'Pantai Wedi Klopo, Hutan, Gajahrejo, Malang, East Java, Indonesia', 10000, '24 jam', 'Pantai Wedi Klopo – Kabupaten Malang mempunyai barisan pantai yang menakjubkan dan pantas untuk didatangi. Bagus untuk traveling sendiri atau bersama rekan – rekan.'),
(70, 1, 'img/sine.jpg', 'Sine beach', 'Sine Beach, Sine, Kalibatur, Tulungagung Regency, East Java, Indonesia', 10000, '24 jam', 'Pantai Sine ini adalah pantai yang sangat recommended bagi kalian yang ingin merasakan ketenangan disaat berlibur. Suasananya yang tenang dapat membuat kalian merasa sangat nyaman saat berkunjung ke pantai ini.'),
(71, 1, 'img/balekambang.jpg', 'Balekambang beach', 'Dusun Sumber Jambe, Desa Srigonco, Kecamatan Bantur, Kabupaten Malang, Jawa Timur', 17500, '24 jam', 'Pantai Balekambang adalah sebuah pantai di pesisir selatan yang terletak di tepi Samudra Indonesia secara administratif masuk wilayah Dusun Sumber Jambe, Desa Srigonco, Kecamatan Bantur, Kabupaten Malang, Jawa Timur dan merupakan salah satu wisata di Kabupaten Malang sejak 1985 hingga kini.'),
(72, 1, 'img/tumpang.jpg', 'Kedung Tumpang beach', 'Pantai Kedung Tumpang, Area Perkebunan Dan P, Pucanglaban, Tulungagung Regency, East Java, Indonesia', 5000, '24 jam', 'Kedung Tumpang merupakan sebuah pantai yang terletak di Desa Pucanglaban, Kecamatan Pucanglaban, Kabupaten Tulungagung, Jawa Timur. Pantai ini dikenal dengan salah satu pantai dengan adanya karang-karang dan tebing yang terjal yang dapat menjadi salah satu hal untuk menarik wisatawan.[1] Selain itu, dengan adanya ceruk (lekukan yang berbentuk seperti kolam) di tengah karang- karang tersebut, wisatawan dapat menggunakannya untuk berenan…'),
(73, 1, 'img/sipelot.jpg', 'Sipelot beach', 'Pantai Sipelot, Gunung, Pujiharjo, Malang, East Java, Indonesia', 10000, '24 jam', 'Pantai Sipelot adalah pantai di pesisir selatan Malang yang memiliki muara dan air terjun yang indah. Pemandangan tebing karang di sekitar teluk pantai pun terlihat menakjubkan. Ada banyak aktivitas seru yang bisa Anda lakukan di pantai ini seperti memancing atau sekedar berkeliling menjelajah pantai.'),
(74, 5, 'img/baluran.jpg', 'Baluran National Park / Africa Van Java', 'Area Hutan/Kebun, Sumberwaru, Kec. Banyuputih, Kabupaten Situbondo, Jawa Timur', 15000, '07.30–16.00', 'Taman Nasional Baluran merupakan perwakilan ekosistem hutan kering di Pulau Jawa, terdiri dari tipe vegetasi savana, hutan mangrove, hutan musim, hutan pantai, hutan pegunungan bawah, hutan rawa, dan hutan yang selalu hijau sepanjang tahun.'),
(75, 5, 'img/gandrung.jpg', 'Taman Gandrung Terakota', 'Krajan, Tamansari, Kec. Licin, Kabupaten Banyuwangi, Jawa Timur 68454', 15000, '08.00–16.00', 'Taman Gandrung Terakota adalah sebuah situs budaya yang melestarikan ikon seni budaya Banyuwangi: Tari Gandrung. Di situs ini dihamparkan 1.000 patung penari gandrung yang dibuat dari tembikar atau terakota. Patung-patung ini tersebar di tepi dan di tengah persawahan dengan fasilitas amfiteater terbuka untuk dimanfaatkan untuk panggung pementasan kesenian Banyuwangi.'),
(76, 2, 'img/ijen.jpg', 'Gunung Ijen', 'Perbatasan Kabupaten Banyuwangi dan Kabupaten Bondowoso, Jawa Timur, Indonesia.', 7500, '01.00–12.00', 'Gunung Ijen adalah sebuah gunung berapi yang terletak di perbatasan Kabupaten Banyuwangi dan Kabupaten Bondowoso, Jawa Timur, Indonesia. Gunung ini memiliki ketinggian 2.386 mdpl dan terletak berdampingan dengan Gunung Merapi. Gunung Ijen terakhir meletus pada tahun 1999.'),
(77, 4, 'img/sarangan.jpg', 'Telaga Sarangan', 'Jalan Raya Telaga Sarangan, Sarangan, Plaosan, Kabupaten Magetan, Jawa Timur', 15000, '24 jam', 'Telaga Sarangan, juga dikenal sebagai Telaga Pasir adalah telaga alami yang berada di ketinggian 1.200 meter di atas permukaan laut dan terletak di lereng Gunung Lawu, Kecamatan Plaosan, Kabupaten Magetan, Jawa Timur. Telaga ini berjarak sekitar 16 kilometer arah barat Kota Magetan.'),
(78, 2, 'img/bromo.jpg', 'Mount Bromo', 'Kabuputen Malang , Kabupaten Pasuruan, Kabupaten Probolinggo dan Kapupaten Lumajang, Provinsi Jawa Timur', 34000, '24 jam', 'Gunung Bromo adalah gunung api aktif yang terletak di perbatasan kabupaten Lumajang, Malang, Pasuruan dan Probolinggo.'),
(79, 3, 'img/sewu.jpg', 'Air Terjun Tumpak Sewu Lumajang', 'kampung siji, Jl. Raya Sidomulyo, Besukcukit, Sidomulyo, Kec. Pronojiwo, Kabupaten Lumajang, Jawa Timur 67374', 10000, '07.00-15.00', 'Air Terjun Tumpak Sewu atau disebut juga Coban Sewu adalah sebuah air terjun berketinggian sekitar 120 meter. Air terjun ini berbatasan dengan Kabupaten Lumajang dan Kabupaten Malang, Provinsi Jawa Timur. Air Terjun Tumpak Sewu memiliki aliran air yang menyerupai tirai sehingga termasuk dalam tipe air terjun Tiered.'),
(80, 5, 'img/alas.jpg', 'Taman Nasional Alas Purwo', 'Jl. Brawijaya No.20, Kebalenan, Kec. Banyuwangi, Kabupaten Banyuwangi, Jawa Timur 68417', 5000, '07.30-16.00', 'Taman Nasional Alas Purwo adalah sebuah taman nasional yang terletak di Kecamatan Tegaldlimo dan Kecamatan Purwoharjo, Kabupaten Banyuwangi, Jawa Timur, Indonesia. Letak taman nasional ini di ujung paling timur dari Pulau Jawa.'),
(81, 5, 'img/agro.jpg', 'Wisata Agro Wonosari', 'RT.04/RW.07, Bodean Putuk, Toyomarto, Kec. Singosari, Kabupaten Malang, Jawa Timur 65153', 15000, '06.00-16.00', 'Kebun teh dataran tinggi dengan pemandian air panas plus jalur untuk mendaki & bersepeda.'),
(82, 2, 'img/ranu.jpg', 'Ranu Kumbolo', 'Taman Nasional Bromo Tengger Semeru, Jawa Timur, Indonesia', 24000, '24 jam', 'Ranu Kumbolo adalah sebuah danau yang terletak di dalam Taman Nasional Bromo Tengger Semeru, Jawa Timur, Indonesia. Danau ini merupakan bagian dari rute termudah yang berasal dari Ranu Pani menuju puncak Gunung Semeru.'),
(83, 5, 'img/djawatan.jpg', 'Hutan De Djawatan', 'Purwosari, Benculuk, Kec. Cluring, Kabupaten Banyuwangi, Jawa Timur 68482', 7500, '08.00-17.00', 'Menyusuri jalan setapak yang dinaungi dahan pohon yang menjulang, serta tempat foto & meja piknik.'),
(84, 3, 'img/watu.jpg', 'Coban Watu Ondo', 'Bagean Borah, Madiredo, Kec. Pujon, Kabupaten Malang, Jawa Timur 65392', 10000, '24 jam', 'Coban Watu Ondo atau dengan nama lain Coban Kembar berada di dalam kawasan Taman Hutan Rakyat (Tahura) Raden Soerjo di bawah lereng Gunung Welirang yang berbatasan antara Mojokerto dan kota Batu.'),
(85, 3, 'img/kapas.jpg', 'Air Terjun Kapas Biru', 'Mulyoarjo, Pronojiwo, Kec. Pronojiwo, Kabupaten Lumajang, Jawa Timur 67374', 10000, '05.00-16.00', 'Air Terjun Kapas Biru atau Coban Kapas Biru merupakan air terjun yang terletak di Kabupaten Lumajang, Provinsi Jawa Timur. Objek wisata ini dibuka untuk umum sejak tahun 2015 dengan menawarkan keindahan air terjun. Belum diketahui pasti total ketinggian air terjun ini namun diperkirakan sekitar 100 meter.'),
(86, 5, 'img/555881lb2.jpg', 'Labuan Bajo', 'Kecamatan Komodo, Kabupaten Manggarai Barat, Provinsi Nusa Tenggara Timur', 380000, '24 jam', 'Labuan Bajo dan Taman Nasional Komodo adalah satu entitas yang tidak dapat terpisahkan. Keduanya saling terhubung sehingga ketika Sobat Pesona berada di Labuan Bajo, perlu mengunjungi Taman Nasional Komodo. Untuk mencapai ke sana, Sobat Pesona bisa menggunakan kapal feri atau kapal cepat. Ada banyak pilihan keberangkatan mulai dari pagi hingga sore hari.'),
(87, 5, 'img/519184wakatobi_beach_2006 (1).jpg', 'Taman Nasional Wakatobi', 'Sulawesi, Indonesia', 880000, '24 jam', 'Taman Nasional Wakatobi yang ditetapkan pada tahun 1996, dengan total area 1,39 juta hektar, menyangkut keanekaragaman hayati laut dan karang yang menempati salah satu posisi prioritas tertinggi dari konservasi laut di Indonesia. Keindahan dan kekayaan kawasan Taman Nasional Wakatobi sebenarnya sudah terkenal di mancanegara, terutama setelah Ekspedisi Wallacea dari Inggris pada tahun 1995 yang menyebutkan bahwa kawasan di Sulawesi Tenggara ini sangat kaya akan spesies koral.');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama`) VALUES
(1, 'Pantai'),
(2, 'Gunung'),
(3, 'Air Terjun'),
(4, 'Waduk'),
(5, 'Taman');

-- --------------------------------------------------------

--
-- Table structure for table `popular`
--

CREATE TABLE `popular` (
  `id` int(11) NOT NULL,
  `destinasi_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `popular`
--

INSERT INTO `popular` (`id`, `destinasi_id`) VALUES
(4, 68),
(3, 71),
(2, 86),
(1, 87);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `destinasi`
--
ALTER TABLE `destinasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kategori_id` (`kategori_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `popular`
--
ALTER TABLE `popular`
  ADD PRIMARY KEY (`id`),
  ADD KEY `destinasi_id` (`destinasi_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `destinasi`
--
ALTER TABLE `destinasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `popular`
--
ALTER TABLE `popular`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `destinasi`
--
ALTER TABLE `destinasi`
  ADD CONSTRAINT `destinasi_ibfk_1` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`);

--
-- Constraints for table `popular`
--
ALTER TABLE `popular`
  ADD CONSTRAINT `popular_ibfk_1` FOREIGN KEY (`destinasi_id`) REFERENCES `destinasi` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
