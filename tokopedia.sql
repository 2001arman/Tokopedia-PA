-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2021 at 01:49 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokopedia`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(10) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `deskripsi` mediumtext NOT NULL,
  `stok` int(10) NOT NULL,
  `harga` int(15) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `kategori` varchar(255) DEFAULT NULL,
  `rating` float NOT NULL,
  `terjual` int(20) NOT NULL,
  `lokasi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `nama`, `deskripsi`, `stok`, `harga`, `gambar`, `kategori`, `rating`, `terjual`, `lokasi`) VALUES
(1, 'CELANA PDL PENDEK', 'Selamat datang di Raung Adventure Official resmi di Tokopedia\r\n1. Jaminan retur.\r\n2. COD/Non COD\r\n3. 1x24 jam proses\r\n4. Gratis Ongkir\r\n\r\nCelana ini sangat cocok untuk kegiatan lapangan, outdoor, santai, atau bahkan formal\r\n\r\nDeskripsi dan nilai tambah produk\r\n1. Bahan :\r\n- Full bahan Ripstop berkualitas merek CRISTAL kotak besar (tebal dan halus)\r\n- Warna yang tersedia: Krem tua\r\n2. Model:\r\n- Jahitan rapi dan kuat dengan perpaduan benang 3000yard dan 5000yard, serta ditambahkan bartek dan jahitan jarum dua rantai.\r\n- Mempunyai 6 saku (2 belakang model bobok, 2 atas model bobok, 2 samping model tempel)\r\n- Terdapat ikat pinggang/gesper yang menempel di samping kiri dan kanan pinggang\r\n- 3. Aksesoris\r\n- Aksesoris berkualitas, seperti kancing, sleting, dan gesper\r\n- terdapat logo Raung yang terbuat dari karet berkualitas di saku kanan.\r\n\r\nInfo ukuran (+-)\r\n28: Pinggang 75, Panjang 60\r\n29: Pinggang 77,5, Panjang 60\r\n30: Pinggang 80, Panjang 60\r\n31: Pinggang 82,5, Panjang 60\r\n32: Pinggang 85, Panjang 60\r\n33: Pinggang 87,5, Panjang 60\r\n34 : Pinggang 90, Panjang 60\r\n35: Pinggang 92,5, Panjang 60\r\n36 Pinggang 95, Panjang 60\r\n#celanapdl', 100, 24000, 'https://drive.google.com/uc?export=view&amp;id=17zXK-BBjmhNC7WABBZjMbc9xt_cJeSXO', 'Celana', 4.8, 251, 'Kota Bandung'),
(2, 'LIVEHAF - Tib Chino Long Pants Black', 'Kami menyadari bahwa hampir semua orang Indonesia yang bekerja membutuhkan celana chino yang lembut, nyaman, dan juga stretch agar dapat melakukan aktifitas sesuka hati dan tidak menganggu mobilitas.\r\n\r\nKantong belakang yang dibuat tanpa kancing juga membuat Chino ini sangat nyaman ketika duduk, jadi tidak ada lagi keluhan kedudukkan kancing ataupun kancing nyangkut di bangku.\r\n\r\nTenang, seleting-nya juga menggunakan YKK agar dapat terkunci dengan sempurna. Selain itu pinggangnya juga dibuat stretch agar ketika habis makan dan perut membesar sedikit, masih aman.\r\n\r\nBahannya terbuat dari twill stretch yang sangat lembut dan halus banget, berbeda dengan versi sebelumnya yang sedikit kasar. Untuk pencucian pertama sampai ketiga kali lebih baik dipisah, agar tidak luntur mengenai pakaian anda yang lain.\r\n\r\n* Tinggi &amp; Berat Model : 185cm &amp; 77kg\r\n* Model Pakai Size M\r\n* Premium Waistband\r\n* Super Stretch\r\n* Reguler Fit\r\n* 2 Kantong Depan\r\n* 2 Kantong Belakang (Tanpa Kancing)\r\n* Bahan : Twill Stretch Combed Soft\r\n\r\nSIZE CHART Celana TIB Chino Long Pants\r\n*Celana Posisi Dikancing*\r\n\r\nS : Pinggang Nomor 29-30, Lingkar Pinggang 79cm, Panjang 96cm, Selangkangan 66cm\r\nM : Pinggang Nomor 31-32, Lingkar Pinggang 84cm, Panjang 98cm, Selangkangan 68cm\r\nL : Pinggang Nomor 33-34, Lingkar Pinggang 89cm, Panjang 100cm, Selangkangan\r\n70cm\r\nXL : Pinggang Nomor 35-36,Lingkar Pinggang 94cm, Panjang 102cm, Selangkangan\r\n72cm\r\nXXL: Pinggang Nomor 37-38,Lingkar Pinggang 99cm, Panjang 104cm, Selangkangan\r\n74cm\r\n\r\n*Toleransi ukuran ±2 cm\r\n\r\n1. Harap pastikan pesanan sudah sesuai sebelum check out.\r\n2. Untuk klaim produk tidak lengkap harap sertakan video unboxing paket.\r\n3. Setelah barang sampai mohon dicek kelengkapan produk dan pastikan barang diterima dengan kondisi baik sebelum klik &quot;Selesai&quot;.', 100, 139999, 'https://drive.google.com/uc?export=view&amp;id=126NATWocDa-o83bZDoDT_dF5NjL0ocf3', 'Celana', 4.9, 112, 'Kota Tangerang'),
(4, 'Celana Pendek Pria Copenhagen', '- Bahan : Baby Terry\r\n- Pinggang : Karet ( Elastis )\r\n- Terdapat Kantong Kanan &amp; Kiri\r\n- All size (size chart dapat di slide sampai akhir)\r\n- Harga per pcs\r\n\r\nCelana Pendek!\r\n\r\nDitengah keadaan saat ini Cogen berusaha selalu setia menemani GEN semua walau dirumah aja. Celana Pendek atau Boxer ini sangat cocok untuk dirumah aja, namun tetap stylish apabila ingin digunakan untuk sekedar berjalan - jalan di sekitar rumah.\r\n\r\nUntuk di pakai hangout?? Comin rasa cocok apabila di padukan dengan Polo shirt dan Sneakers, agar tetap terlihat Casual Trendy.\r\n\r\nGaransi COGEN :\r\n\r\n• Size tidak sesuai? Langsung tuker aja GRATIS*\r\n• Produk Original\r\n• Premium tidak perlu mahal kan?\r\n\r\n#CelanaPendek #CelanaPendekPria #CelanaBoxer #BoxerPria #CelanaSantai #Copenhagen #Cogen\r\n\r\n\r\n*Syarat dan Ketentuan', 500, 38800, 'https://drive.google.com/uc?export=view&amp;id=1ke0Sp_6UZxKOnET6GMYQBI3LvCP1w7og', 'Celana', 4.8, 508, 'Jakarta Barat'),
(5, 'JUMBO ARMY CELANA PENDEK PRIA', 'stok warna tidak mengikat , ingat kasih warna cadangan\r\n\r\nSpesifikasi produk:\r\nBahan: Sogo\r\nUkuran: ALLSIZE STANDARD\r\n*Lingkar pinggang bisa ditarik maksimal 130cm.\r\n*Panjang celana 57cm.\r\n\r\nDetail:\r\n-Pinggang karet\r\n-Terdapat 2 kantong disisi kanan bawah dan kiri bawah\r\n\r\nPilihan warna: Abu, Putih, Hijau , Cream', 699, 45500, 'https://drive.google.com/uc?export=view&amp;id=1rfxhOQC_NZICqLDR_20Kiw3tJTLp1sQD', 'Celana', 4.7, 354, 'Jakarta Utara'),
(6, 'Celana Pendek Surfing Dewasa Rip Motif', 'Celana Pendek Surfing Pria Motif Original - Celana Pendek Rip Pinggang Karet Motif - Celana Printing\r\n\r\nBahan babytery printing original pabrik great A (Terbaik dikelasnya) yang mempunyai standart kualitas import.\r\n\r\nPanjang Celana\r\n\r\n-All size ; 45cm\r\n-XL ; 58cm\r\n\r\nDetail model celana :\r\n- Pinggang memakai karet kolor\r\n- Kain memakai bahan babytery printing tebal dan halus (Great A)\r\n- Saku depan ada 2 (Kanan - kiri)\r\n\r\nWarna ; Hitam\r\n;Abu\r\n;Navy\r\n\r\n- Motif Random karena setiap minggu selalu ganti yang terbaru. Tapi motifnya bagus dan gak norak😍\r\n- Warna mungkin tidak 100% sama, karena pengaruh cahaya matahari', 12000, 18900, 'https://drive.google.com/uc?export=view&amp;id=1gAKCzHbovdIgfPsyrO_zatoUNWmtYpEV', 'Celana', 4.7, 133, 'Jakarta Selatan'),
(7, 'FELIX Celana Panjang Joger Polos Pria', 'FELIX Celana Panjang Joger Polos Pria Model Korea Okechuku\r\n\r\nMaterial : Baby Terry\r\n\r\nPilihan warna : Hitam / Navy / Abu Tua / Abu Muda / Krem / Hijau / Putih (di lapisi furing di bagian belakang sehingga tdk tembus pandang)\r\n\r\nDetail : Bahan Babytery berkualitas dgn tekstur halus dan nyaman di gunakan. Cocok utk di pakai segala macam aktifitas, baik utk hangout, nongkrong bareng teman, maupun utk olah raga.\r\n\r\nTerdapat kantong di kiri dan kanan,juga 1 kantong di bagian belakang. Terdapat tali di bagian depan (warna dan ukuran tali dapat berubah dari foto, tergantung ketersediaan tali di pasaran). Ujung kaki berupa karet, bukan rib. Pola / pattern dibuat unisex sehingga bisa dipakai pria maupun wanita.\r\n\r\nS\r\nLingkar pinggang : 62cm fit to 72cm\r\nPanjang : 90cm\r\nLingkar paha : 54cm\r\nLingkar Pinggul : 102cm\r\nLingkar betis : 30cm\r\n\r\nM/L (M fit to L)\r\nLingkar pinggang : 74cm fit to 84cm\r\nPanjang : 94cm\r\nLingkar paha : 64cm\r\nLingkar pinggul : 108m\r\nLingkar betis : 34cm\r\n\r\nXL/XXL (XL fit to XXL)\r\nLingkar pinggang : 82cm fit to 92cm\r\nPanjang : 96cm\r\nLingkar paha :68cm\r\nLingkar pinggul : 112cm\r\nLingkar betis : 38cm\r\n\r\n(Toleransi ukuran +/- 1-2cm karena proses potong dan jahit)\r\n\r\nPembeli harap memperhatikan dan mempertimbangkan detail ukuran di atas sebelum membeli.\r\n\r\nJam kerja :\r\nSenin - Sabtu\r\n08.00 - 16.00 WIB\r\nFast respon pada jam kerja, pemesanan dan pertanyaan di luar jam kerja akan diproses keesokan harinya.\r\n\r\nBUDAYAKAN MEMBACA SEBELUM MEMBELI\r\n*) Pemilihan warna&amp;ukuran hanya melalui kolom ETERANGAN&quot; saat order, bkn melalui CHAT &amp; DISKUSI, Jika tdk ditulis maka akan dikirim scr acak\r\n*) Wajib mendokumentasikan saat membuka paket dalam bentuk video untuk berjaga-jaga jika ada barang yang tidak sesuai /rusak/cacat sebagai syarat retur di toko kami\r\n\r\nMENERIMA PESANAN DALAM JUMLAH BANYAK (untuk seragam sekolah, kaos acara kantor/perusahaan). Kami juga menerima pesanan special order (desain custom / sesuai permintaan customer) dengan minimal order 100pcs.', 1234, 79900, 'https://drive.google.com/uc?export=view&amp;id=1dMBvyovcuPRAXiNs6fv3rzlMaNnK2ZMn', 'Celana', 4.8, 184, 'Jakarta Barat'),
(8, 'CHINO PANTS YAMATO BLACK - KIZARU', '[YAMATO BLACK]\r\n\r\nHidup dan segala dinamikanya adalah hutan rimbun imajinasi, laut bagi buih-buih kreatifitas, tak mengenal batas.\r\n\r\nKizaru World hadir merepresentasikan sudut lain kehidupan, disuguhkan secara apik hanya dengan kualitas terbaik.\r\n\r\nKarena setiap karya adalah cerita.\r\n\r\n[DETAILS]\r\n\r\nMaterial : Chino\r\nModel Product : Strecth Skinny Fit\r\nWarna : Black\r\nPackaging: Zip Plastic Bag.\r\nUntuk model menggunakan Size 30\r\nGeser ke kanan untuk size chart.\r\n\r\nSemua gambar adalah hasil proses foto langsung oleh tim, 100% Real Pictures, bukan gambar mock-up atau desain mentah Photoshop/Coreldraw, sehingga tidak perlu khawatir apabila produk yang diterima tidak sesuai dengan gambar.\r\n\r\n[OPERASIONAL]\r\n\r\nSenin - Jumat: 08.00 - 21.00 WIB.\r\nSabtu dan Minggu 13.00 - 20.00 WIB.\r\n\r\n[PENGIRIMAN]\r\n\r\nPengiriman paket dilakukan 2x sehari melalui JNE/JNT/SICEPAT/GOSEND/GRABSEND. Pemesanan sebelum jam 19.00 WIB akan dikirim di hari yang sama.\r\n\r\nFilosofi kami adalah One Day Service, proses dari pemesanan sampai pengiriman sangat cepat, ulasan rating 4,9 adalah bukti nilai yang sempurna, boleh dicek terlebih dahulu.\r\n\r\n[RETUR]\r\n\r\nKizaru World salah kirim size, cacat, atau kurang?\r\n\r\nBoleh diretur dengan menyertakan bukti video unboxing, komitmen kami adalah 100% kepuasan konsumen.\r\n\r\nSincerely,\r\nKizaru World official Store\r\n\r\n#Pants #Chino #Kizaru', 5000, 159000, 'https://drive.google.com/uc?export=view&amp;id=1owLaPL0khh-98TZ8KWV4exEZSNLbsvXQ', 'Celana', 4.9, 379, 'Kota Bandung'),
(9, 'Okechuku ARTHUR Celana Hypebeast', 'Bahan : Baby Canvas (tidak stretch)\r\n\r\nCelana Cargo jogger model terbaru dari Okechuku yang lagi kekinian banget. Celana polos, simple, basic, tapi keren banget. Ujung kaki dilengkapi karet membuat penampilan Anda terlihat santai dan casual.\r\n\r\nKantong celana di paha depan kiri dan kanan, kantong di paha samping kiri dan kanan yang dilengkapi dengan tutup pada kantongnya, juga terdapat buckle (pengunci kantong) dan variasi tali pada buckle. Pinggangnya terbuat dari karet dan terdapat tali di pinggangnya. Model trendy, bahan adem dan nyaman dipakai.\r\n\r\nTerdapat 4 pilihan warna :\r\n1. Hitam\r\n2. Abu-abu\r\n3. Hijau\r\n4. Putih (di lapisi furing di bagian belakang sehingga tdk tembus pandang)\r\n\r\nPilihan ukuran :\r\n1. Size S\r\n2. Size M/L (M fit to L)\r\n3. Size XL/XXL (XL fit to XXL)\r\n\r\nDetail ukuran dapat dilihat di foto (toleransi +/- 2cm dari yang tertera), diukur2 dulu ke badannya yah, untuk memastikan cocoknya ke ukuran apa.\r\n\r\nTinggi badan model di foto 178cm dan berat badan model 55kilo.\r\n\r\nPembeli harap memperhatikan dan mempertimbangkan detail ukuran di atas sebelum membeli.\r\n\r\nJam kerja :\r\nSenin - Sabtu\r\n08.00 - 16.00 WIB\r\nFast respon pada jam kerja, pemesanan dan pertanyaan di luar jam kerja akan diproses keesokan harinya.\r\n\r\nBUDAYAKAN MEMBACA SEBELUM MEMBELI\r\n*) Pemilihan warna&amp;ukuran hanya melalui kolom KETERANGAN saat order, bukan melalui CHAT &amp; DISKUSI, Jika tidak di tulis maka akan di kirim secara acak\r\n*) Juga Harap TULIS warna CADANGAN, jika warna utama tidak tersedia.\r\n*) Wajib mendokumentasikan saat membuka paket dalam bentuk video untuk berjaga-jaga jika ada barang yang tidak sesuai /rusak/cacat sebagai syarat retur di toko kami\r\n*) Jika anda memutuskan untuk MEMBELI maka kami anggap anda SETUJU dengan aturan di atas\r\n\r\nMENERIMA PESANAN DALAM JUMLAH BANYAK (untuk seragam sekolah, kaos acara kantor/perusahaan). Kami juga menerima pesanan special order (desain custom / sesuai permintaan customer) dengan minimal order 100pcs. Untuk info lebih lanjut, dapat langsung chat admin', 5000, 99900, 'https://drive.google.com/uc?export=view&amp;id=1z-XUAysCPqbZ8yj54w0lyjbZ4TagQ0p6', 'Celana', 4.9, 124, 'Jakarta Barat'),
(10, 'Celana Unisex Erigo Chino Pants Sirius Katun Black', 'Chino Pants Erigo saat ini merupakan salah satu lini pakaian terbaik dan berkualitas tinggi di antara Local Brand Indonesia. Chino Pants are undoubtedly an essential style! Selain serba guna karena modis, celana ini juga merupakan must-have item bagi para pria. Erigo Chino Pants di design dengan warna indah dengan kain pilihan yang membuatmu nyaman sepanjang hari. Memiliki live-button, resleting, belt loop, dan 4 saku simpel pada bagian pinggul.\r\n\r\nUntuk Model Pria: Tinggi 185-186 cm, Berat 75 kg, Menggunakan Ukuran XL\r\nUntuk Model Wanita: Tinggi 168-170 cm, Berat 55 kg, Menggunakan Ukuran M\r\n\r\nBahan: Katun\r\nModel Produk: Stretch Skinny Fit\r\n\r\nDetail Ukuran:\r\n28= Lebar Pinggang: 33,5 cm x Lebar Bawah: 14,5 cm x Panjang Celana: 98 cm\r\n30= Lebar Pinggang: 36 cm x Lebar Bawah: 15 cm x Panjang Celana: 99 cm\r\n32= Lebar Pinggang: 38 cm x Lebar Bawah: 15,5 cm x Panjang Celana: 100 cm\r\n34= Lebar Pinggang: 42 cm x Lebar Bawah: 16,5 cm x Panjang Celana: 102 cm\r\n36= Lebar Pinggang: 43 cm x Lebar Bawah: 17 cm x Panjang Celana: 104,5 cm\r\n38= Lebar Pinggang: 46 cm x Lebar Bawah: 18 cm x Panjang Celana: 105 cm\r\n40= Lebar Pinggang: 49 cm x Lebar Bawah: 18,5 cm x Panjang Celana: 106 cm\r\n\r\n*Diukur secara manual, toleransi ukuran ± 1-2 cm.\r\n\r\nWarna Selvedge:\r\nMerah biru dan Putih.\r\nUntuk warna Selvedge akan dikirim random sesuai ketersediaan.', 999, 130000, 'https://drive.google.com/uc?export=view&amp;id=1pbqtgPX_t4IvxqEKZ1v6E1mQjgMFMMr8', 'Celana', 4.9, 197, 'Kota Tangerang'),
(11, 'Ando Official Sepatu Irvine Pria Dewasa', 'Sepatu Irvine ini didesain untuk menunjang berbagai aktifitas Anda sehari-hari. Bagian atas menggunakan bahan tekstil dan kulit sintetis yang berkualitas dan tahan lama. Sepatu ini menggunakan sol sintetis Direct Injection sehingga daya rekat antara bagian atas dengan sol sangat kuat. SIZE CHART PRIA (CM) 22 = 14,6 23 = 15,3 24 = 16 25 = 16,5 26 = 17,5 27 = 18 28 = 19 29 = 19,5 30 = 20,5 31 = 21 32 = 21,5 33 = 22 34 = 22,5 35 = 23 36 = 23,5 37 = 24,5 38 = 25 39 = 25,5 40 = 26 41 = 27 42 = 27,5 43 = 28 44 = 28,5 45 = 29  WANITA (CM) 22 = 14,6 23 = 15,3 24 = 16 25 = 16 26 = 16,5 27 = 17,5 28 = 18 29 = 19 30 = 19,5 31 = 20 32 = 20,5 33 = 21 34 = 21,5 35 = 22 36 = 23 37 = 23,5 38 = 24,5 39 = 25 40 = 25,5 41 = 26', 500, 144000, 'https://drive.google.com/uc?export=view&amp;id=1hnX6HahK_DlzyY8oPEv83a8irsO5aSWh', 'Sepatu', 0, 0, ''),
(12, 'Sepatu Ardiles Cagiva', 'HARGA TERMURAH...!!!!!\r\n\r\nSILAHKAN KUNJUNGI TOKO KAMI...\r\nBANYAK PILIHAN SANDAL MAUPUN SEPATU NYA...DIJAMIN HARGA PALING MURAH SEJAGAT RAYA DAN DENGAN KUALITAS PRODUK TERBAIK... SILAHKAN FOLLOW TOKO KAMI AGAR BISA DAPATKAN INFO TER UPDATE DARI PRODUK YANG KAMI JUAL. KEPUASAN PELANGGAN MENJADI PRIORITAS UTAMA KAMI. DAN BUDAYAKAN MEMBACA DESKRIPSI PRODUK SEBELUM MEMBELI ...🙏🙏🙏\r\n\r\n\r\nSepatu ARDILES CAGIVA 100% original.\r\nSol phylon\r\nRingan,\r\nKuat,\r\nKeren modelnya dan fashionable.\r\n\r\nSol phylon Slip on style, slip on nya memberi Anda kemudahan ketika memakai dan melepas sepatu.\r\n\r\nBarang yang kami jual ORIGINAL pabrik Ardiles...!!!!!\r\nbukan barang KW...!!!\r\nHarga murah yang kami berikan ini karena kami tangan pertama langsung dari pabrik.\r\n\r\nPENTING...!!!!!\r\n\r\nPerhatikan panjang kaki (dalam cm) sebelum memesan :\r\n\r\nNB: jika biasa pakai 39 disarankan ambil size 40 aja dan seterusnya begitu / naik satu nomer...!!!!!!\r\n\r\n39 = panjang kaki 23.5 cm\r\n40 = panjang kaki 24 cm\r\n41 = panjang kaki 24.5 cm\r\n42 = panjang kaki 25 cm\r\n43 = panjang kaki 25.5 cm\r\n44 = panjang kaki 26 cm\r\n\r\n\r\n**SILAKAN MEMESAN SESUAI PANDUAN UKURAN YANG TERTERA, KARENA SETIAP MODEL DAN MERK BERBEDA UKURANNYA\r\n\r\nDi TOKO KAMI PACKING PAKAI EXTRA GRATIS BUBBLE WRAP SEMUA SEHINGGA LEBIH AMAN PACKING NYA DAN GAK MUDAH RUSAK BARANG NYA...!!!\r\n\r\nJANGAN LUPA KASIH BINTANG 5 + FOTO SERTA KOMENTAR NYA YA KAKAK...\r\n\r\nTERIMA KASIH TELAH BERKUNJUNG KE TOKO KAMI SEMOGA KITA SEMUA SEHAT...BAHAGIA....BERKAH...DAN AMANAH SELALU... AMIIIN... AMIIIN... AMIIIN... !!!\r\n\r\nHAPPY SHOPPING ❤\r\n\r\nTERIMA KASIH 🙏🙏🙏', 200, 53000, 'https://drive.google.com/uc?export=view&amp;id=1anFq8gyPB1R_yhhiN_TXP3n3La5Ne3Jk', 'Sepatu', 0, 0, ''),
(13, 'Sepatu safety caterpillar ori', 'sepatu safety caterpillar\r\nsize 39,40,41,42,42,43,44\r\nsol karet anti slip\r\nsafety lapis besi diujung sepatu\r\n\r\n\r\nsangat cocok digunakan diberbagai kegiatan harianmu\r\ndengan model simple dan modis sangat memungkinkan bisa dugunakan sebagai sepatu kerja sepatu gunung sepatu hiking outdoor indoor dsb\r\n\r\n\r\nlangsung order ya gan\r\ndemikian moga berkenan\r\n\r\ntrimaksih\r\n\r\n\r\nsepatu caterpillar pendek\r\nsepatu caterpillar casual\r\nsepatu safety caterpillar\r\ncatterpilar', 185, 116000, 'https://drive.google.com/uc?export=view&amp;id=1_oQvSPcOYNUyyALkhDrlhJUGEy3Z4RKe', 'Sepatu', 0, 0, ''),
(14, 'Sepatu Nike Zoom DynaBlast', 'TELITI SEBELUM MEMBELI, TANYAKAN STOK SEBELUM MEMBELI.. .\r\nTRANSAKSI AMAN MUDAH\r\nTERPERCAYA VIA TOKO PEDIA\r\nNO TIPU TIPU...\r\n\r\nBARANG 100% BARU + BOX\r\nKUALITAS PREMIUM ORIGINAL\r\n\r\nTERSEDIA DARI UKURAN:\r\n\r\nSEPATU PRIA\r\nSIZE 40 41 42 43 44 45\r\n\r\nBARANG YG DI KIRIM SESUAI DENGAN DESKRIPSI\r\n\r\n\r\nSELAMAT BERBELANJA.....', 300, 450000, 'https://drive.google.com/uc?export=view&amp;id=1EtFgVNeMzYGRhsOyAB62QYGJ9tZxA2yj', 'Sepatu', 0, 0, ''),
(15, 'Hush Puppies Sepatu Pria Connor', 'More Information\r\nBrand : Hush Puppies\r\nColor :\r\nStyle : Sneakers\r\nMaterial : Canvas\r\n\r\nDetail Size :\r\nSize 40 (070) = 25.5 cm\r\nSize 41 (080) = 26.5 cm\r\nSize 42 (090) = 27.5 cm\r\nSize 43 (100) = 28.5 cm\r\nSize 44 (110) = 29.5 cm\r\nSize 45 (120) = 30.5 cm\r\n\r\nHindari tempat basah dan lembab\r\nSimpan dalam kotak dengan gel silica.', 430, 900000, 'https://drive.google.com/uc?export=view&amp;id=1NLL4s3wboSAZGSCgxsZdk--bFyOoUpKP', 'Sepatu', 0, 0, ''),
(16, 'Sepatu Sneakers Casual 21AA30', 'TIDAK AKAN JEBOL setelah dicuci atau kehujanan karena menggunakan tekhnologi baru Shoes Injection Mould bahan sole dicairkan dengan tekanan tinggi menyatu sempurna dengan bahan kain dari sepatu tanpa menggunakan proses lem.\r\n\r\nBahan : Kanvas\r\n\r\nPanduan ukuran :\r\nUkuran 36 Panjang telapak kaki 23,4 cm\r\nUkuran 37 Panjang telapak kaki 24,0 cm\r\nUkuran 38 Panjang telapak kaki 24,7 cm\r\nUkuran 39 Panjang telapak kaki 25,3 cm\r\nUkuran 40 Panjang telapak kaki 26,0 cm\r\nUkuran 41 Panjang telapak kaki 26,6 cm\r\nUkuran 42 Panjang telapak kaki 27,3 cm\r\nUkuran 43 Panjang telapak kaki 28,0 cm\r\nUkuran 44 Panjang telapak kaki 28,7 cm\r\nUkuran 45 Panjang telapak kaki 29,3 cm\r\n\r\nBelanja langsung dari pabrik nya\r\nnow everyone can buy a good shoe\r\n\r\nRESELLER dan DROPSHIPER very welcome\r\ndapatkan discount spesial dari pabrik langsung\r\n\r\n*Semua stok dijamin ready\r\n*Open order 24 jam\r\n*Fast response jam 08.00-16.00 Senin s/d Sabtu\r\n*Order diatas jam 09.00 akan di proses pada hari berikutnya\r\n*Order pada hari minggu dan hari libur Nasional, akan kami proses pada hari kerja', 210, 120000, 'https://drive.google.com/uc?export=view&amp;id=1Qb_1jRZ0HdBshveE0UbKe8K2kg5yd6KY', 'Sepatu', 0, 0, ''),
(17, 'Redknot Triple Hitam Sepatu Slip On Pria', 'Yes kita akhirnya buat sepatu slip on dengan model terkini. Redknot Triple yang udah kalian tunggu-tunggu akhirnya datang juga. Cocok banget buat kamu yang males banget ikat tali sepatu lagi. Tinggal flop dan langsung Go !!\r\n\r\nCocok digunakan untuk :\r\nKegiatan sehari-hari\r\nPergi ke kampus / sekolah\r\nHangout dengan teman\r\n\r\nProduct Specification :\r\nUpper : Canvas\r\nSole Rubber\r\nBerat sepatu : 277 Gram\r\nMade in Indonesia\r\n\r\nWhat in The Box :\r\n1 pasang sepatu', 515, 126000, 'https://drive.google.com/uc?export=view&amp;id=1Z2vspnHxP_MZ_jdvZUSJiuDf5JFsqP5H', 'Sepatu', 0, 0, ''),
(18, 'Converse El Distrito 2.0 80\'S Archive Ox Unisex Shoes', 'Patent Bright. Always reliable. The Converse El Distrito Low Top sneaker was designed to hold up to daily wear and tear with durable canvas upper materials, plus extra padding in the tongue and lining. A soft twill upper with a punch of bold color stands out. The patent Star Chevron logo shines.\r\nUS 3 = 21 CM\r\nUS 3.5 = 21.5 CM\r\nUS 4 = 22 CM\r\nUS 4.5 = 22.5 CM\r\nUS 5 = 23 CM\r\nUS 5.5 = 23.5 CM\r\nUS 6 = 24 CM\r\nUS 6.5 = 24.5 CM\r\nUS 7 = 25 CM\r\nUS 7.5 = 25.5 CM\r\nUS 8 = 26 CM\r\nUS 9 = 27 CM\r\nUS 9.5 = 27.5 CM\r\nUS 10 = 28 CM\r\nUS 10.5 = 28.5 CM\r\nUS 11 = 29 CM\r\nUS 11.5 = 29.5 CM\r\nUS 12 = 30 CM\r\nUS 12.5 = 30.5 CM\r\nUS 13 = 31 CM\r\nUS 13.5 = 31.5 CM\r\nUS 14 = 32 CM\r\nUS 14.5 = 32.5 CM\r\nUS 15 = 33 CM\r\nUS 16 = 34 CM\r\nUS 17 = 35 CM\r\nUS 18 = 36 CM\r\nUS 19 = 37 CM\r\nUS 20 = 38 CM\r\nUS 21 = 39 CM\r\nUS 22 = 40 CM\r\nUS 23 = 41 CM', 223, 515000, 'https://drive.google.com/uc?export=view&amp;id=1WWmx7ug7A0WISen2IGFNYlyQmv0heMvs', 'Sepatu', 0, 0, ''),
(19, 'Ando Official Sepatu Irvine Pria Dewasa', 'Sepatu Irvine ini didesain untuk menunjang berbagai aktifitas Anda sehari-hari. Bagian atas menggunakan bahan tekstil dan kulit sintetis yang berkualitas dan tahan lama. Sepatu ini menggunakan sol sintetis Direct Injection sehingga daya rekat antara bagian atas dengan sol sangat kuat.\r\nSIZE CHART\r\nPRIA\r\n(CM)\r\n22 = 14,6\r\n23 = 15,3\r\n24 = 16\r\n25 = 16,5\r\n26 = 17,5\r\n27 = 18\r\n28 = 19\r\n29 = 19,5\r\n30 = 20,5\r\n31 = 21\r\n32 = 21,5\r\n33 = 22\r\n34 = 22,5\r\n35 = 23\r\n36 = 23,5\r\n37 = 24,5\r\n38 = 25\r\n39 = 25,5\r\n40 = 26\r\n41 = 27\r\n42 = 27,5\r\n43 = 28\r\n44 = 28,5\r\n45 = 29\r\n\r\nWANITA\r\n(CM)\r\n22 = 14,6\r\n23 = 15,3\r\n24 = 16\r\n25 = 16\r\n26 = 16,5\r\n27 = 17,5\r\n28 = 18\r\n29 = 19\r\n30 = 19,5\r\n31 = 20\r\n32 = 20,5\r\n33 = 21\r\n34 = 21,5\r\n35 = 22\r\n36 = 23\r\n37 = 23,5\r\n38 = 24,5\r\n39 = 25\r\n40 = 25,5\r\n41 = 26', 145, 144000, 'https://drive.google.com/uc?export=view&amp;id=1hnX6HahK_DlzyY8oPEv83a8irsO5aSWh', 'Sepatu', 0, 0, ''),
(20, 'TOMKINS Aniara - 40', 'Sport kasual yang nyaman dipakai sepanjang hari.\r\n- Warna Hitam\r\n- Material Mesh\r\n- Sole Phylon\r\n- 4 Pasang Eyelet\r\n​- Insole Mesh Foam\r\n\r\nSize Chart\r\n\r\n36 = 23,0 cm\r\n37 = 23,5 cm\r\n38 = 24,5 cm\r\n39 = 25,2 cm\r\n40 = 25,6 cm\r\n41 = 26,5 cm\r\n42 = 27,0 cm\r\n43 = 27,8 cm', 840, 190000, 'https://drive.google.com/uc?export=view&amp;id=1ewAw_xa4e1menDbpbyxnwDsnmyD5k25C', 'Sepatu', 0, 0, ''),
(21, 'Dane and Dine BLEKA LOW NEW', 'BLEKA , Sepatu sneakers dengan Low Cut, membuat anda menjadi stylish dan percaya diri saat menggunakannya. Sangat cocok dikenakan saat berkendara atau sedang hang out bersama teman, dan sekedar jalan jalan.\r\nDibuat dengan bahan Leather, membuat sepatu ini sangat awet dan tahan lama walaupun terkena air dan sinar matahari yang berlebih. Juga dengan alas yang terbuat dari bahan karet mentah,sehingga tidak licin saat digunakan dan kuat sebagai alas pijakan anda.\r\n\r\n- Upper Leather\r\n- Outsole Rubber\r\n- Insole Latex Foam\r\n- Sneaker Model\r\n\r\nSize Chart Insole :\r\n\r\nSize 39 : 25,5 cm\r\nSize 40 : 26 cm\r\nSize 41 : 26,5 cm\r\nSize 42 : 27 cm\r\nSize 43 : 28 cm', 620, 129000, 'https://drive.google.com/uc?export=view&amp;id=1X6pLWpPB7dqAUNcnirnu-jaxewBbdng_', 'Sepatu', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `details_user`
--

CREATE TABLE `details_user` (
  `username` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `keranjang` varchar(255) NOT NULL,
  `riwayat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `details_user`
--

INSERT INTO `details_user` (`username`, `nama`, `alamat`, `no_hp`, `keranjang`, `riwayat`) VALUES
('arman4', 'arman maulana', 'jalan trisari', '082129355094', 'arman4', 'arman4');

-- --------------------------------------------------------

--
-- Table structure for table `tes`
--

CREATE TABLE `tes` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nohp` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `supplier` varchar(255) NOT NULL,
  `barang` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tes`
--

INSERT INTO `tes` (`id`, `nama`, `nohp`, `alamat`, `supplier`, `barang`) VALUES
(1, 'Ramli', '085250208930', 'Jl.Rukun Makmur Rt.04 Desa Jembayan Dalam Kecamatan Loa Kulu Kutai Kartanegara Kaltim Kode Pos 75571', 'Pasar apple', 'Pakaian'),
(2, 'Ozan', '085330980054', 'Jl.Trisari IV, Kec.Samarinda Ulu,Kota Samarinda,Kalimantan Timur Kelurahan Sidodadi Kode Pos 75243', 'Indogrosir', 'Sepatu');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'Ramli', '$2y$10$Ts4ATUBWA.WwXrRqtI3Gt.cqpYv41.S2itBp.b8FyrkOB05s7yu7a'),
(2, 'arman', '$2y$10$MUpcoE8CiN1QsQn024Y5Megv3wdIavUuZLdSkMJVbU0KqRaXtmLWS'),
(3, 'arman1', '$2y$10$Tsn49dThbbPAMdhulchL4.g0XK..61kgj2LkEzZ2EctlWEUM68RmC'),
(4, 'arman2', '$2y$10$cru4IsrST2bhQMOxiuhZye3vUOucj4Cr7GhUkU3ipXO9JAiPrHN8y'),
(5, 'arman3', '$2y$10$Z8TkiRw1XOWaIiT1NnDymOw9ei/swKFFjdcg9ET/GbJJN8qIr7SAi'),
(6, 'arman4', '$2y$10$tz8yTfZ26UGCbpeKa0oYQ.nplEqgUUVKx1hpGJFuvcASzASF0gMHi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details_user`
--
ALTER TABLE `details_user`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `tes`
--
ALTER TABLE `tes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tes`
--
ALTER TABLE `tes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
