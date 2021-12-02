-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2021 at 03:09 PM
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
(1, 'CELANA PDL PENDEK', 'Selamat datang di Raung Adventure Official resmi di Tokopedia\r\n1. Jaminan retur.\r\n2. COD/Non COD\r\n3. 1x24 jam proses\r\n4. Gratis Ongkir\r\n\r\nCelana ini sangat cocok untuk kegiatan lapangan, outdoor, santai, atau bahkan formal\r\n\r\nDeskripsi dan nilai tambah produk\r\n1. Bahan :\r\n- Full bahan Ripstop berkualitas merek CRISTAL kotak besar (tebal dan halus)\r\n- Warna yang tersedia: Krem tua\r\n2. Model:\r\n- Jahitan rapi dan kuat dengan perpaduan benang 3000yard dan 5000yard, serta ditambahkan bartek dan jahitan jarum dua rantai.\r\n- Mempunyai 6 saku (2 belakang model bobok, 2 atas model bobok, 2 samping model tempel)\r\n- Terdapat ikat pinggang/gesper yang menempel di samping kiri dan kanan pinggang\r\n- 3. Aksesoris\r\n- Aksesoris berkualitas, seperti kancing, sleting, dan gesper\r\n- terdapat logo Raung yang terbuat dari karet berkualitas di saku kanan.\r\n\r\nInfo ukuran (+-)\r\n28: Pinggang 75, Panjang 60\r\n29: Pinggang 77,5, Panjang 60\r\n30: Pinggang 80, Panjang 60\r\n31: Pinggang 82,5, Panjang 60\r\n32: Pinggang 85, Panjang 60\r\n33: Pinggang 87,5, Panjang 60\r\n34 : Pinggang 90, Panjang 60\r\n35: Pinggang 92,5, Panjang 60\r\n36 Pinggang 95, Panjang 60\r\n#celanapdl', 105, 24000, 'https://drive.google.com/uc?export=view&amp;id=17zXK-BBjmhNC7WABBZjMbc9xt_cJeSXO', 'Celana', 4.8, 255, 'Kota Bandung'),
(2, 'LIVEHAF - Tib Chino Long Pants Black', 'Kami menyadari bahwa hampir semua orang Indonesia yang bekerja membutuhkan celana chino yang lembut, nyaman, dan juga stretch agar dapat melakukan aktifitas sesuka hati dan tidak menganggu mobilitas.\r\n\r\nKantong belakang yang dibuat tanpa kancing juga membuat Chino ini sangat nyaman ketika duduk, jadi tidak ada lagi keluhan kedudukkan kancing ataupun kancing nyangkut di bangku.\r\n\r\nTenang, seleting-nya juga menggunakan YKK agar dapat terkunci dengan sempurna. Selain itu pinggangnya juga dibuat stretch agar ketika habis makan dan perut membesar sedikit, masih aman.\r\n\r\nBahannya terbuat dari twill stretch yang sangat lembut dan halus banget, berbeda dengan versi sebelumnya yang sedikit kasar. Untuk pencucian pertama sampai ketiga kali lebih baik dipisah, agar tidak luntur mengenai pakaian anda yang lain.\r\n\r\n* Tinggi &amp; Berat Model : 185cm &amp; 77kg\r\n* Model Pakai Size M\r\n* Premium Waistband\r\n* Super Stretch\r\n* Reguler Fit\r\n* 2 Kantong Depan\r\n* 2 Kantong Belakang (Tanpa Kancing)\r\n* Bahan : Twill Stretch Combed Soft\r\n\r\nSIZE CHART Celana TIB Chino Long Pants\r\n*Celana Posisi Dikancing*\r\n\r\nS : Pinggang Nomor 29-30, Lingkar Pinggang 79cm, Panjang 96cm, Selangkangan 66cm\r\nM : Pinggang Nomor 31-32, Lingkar Pinggang 84cm, Panjang 98cm, Selangkangan 68cm\r\nL : Pinggang Nomor 33-34, Lingkar Pinggang 89cm, Panjang 100cm, Selangkangan\r\n70cm\r\nXL : Pinggang Nomor 35-36,Lingkar Pinggang 94cm, Panjang 102cm, Selangkangan\r\n72cm\r\nXXL: Pinggang Nomor 37-38,Lingkar Pinggang 99cm, Panjang 104cm, Selangkangan\r\n74cm\r\n\r\n*Toleransi ukuran ±2 cm\r\n\r\n1. Harap pastikan pesanan sudah sesuai sebelum check out.\r\n2. Untuk klaim produk tidak lengkap harap sertakan video unboxing paket.\r\n3. Setelah barang sampai mohon dicek kelengkapan produk dan pastikan barang diterima dengan kondisi baik sebelum klik &quot;Selesai&quot;.', 96, 139999, 'https://drive.google.com/uc?export=view&amp;id=126NATWocDa-o83bZDoDT_dF5NjL0ocf3', 'Celana', 4.9, 116, 'Kota Tangerang'),
(4, 'Celana Pendek Pria Copenhagen', '- Bahan : Baby Terry\r\n- Pinggang : Karet ( Elastis )\r\n- Terdapat Kantong Kanan &amp; Kiri\r\n- All size (size chart dapat di slide sampai akhir)\r\n- Harga per pcs\r\n\r\nCelana Pendek!\r\n\r\nDitengah keadaan saat ini Cogen berusaha selalu setia menemani GEN semua walau dirumah aja. Celana Pendek atau Boxer ini sangat cocok untuk dirumah aja, namun tetap stylish apabila ingin digunakan untuk sekedar berjalan - jalan di sekitar rumah.\r\n\r\nUntuk di pakai hangout?? Comin rasa cocok apabila di padukan dengan Polo shirt dan Sneakers, agar tetap terlihat Casual Trendy.\r\n\r\nGaransi COGEN :\r\n\r\n• Size tidak sesuai? Langsung tuker aja GRATIS*\r\n• Produk Original\r\n• Premium tidak perlu mahal kan?\r\n\r\n#CelanaPendek #CelanaPendekPria #CelanaBoxer #BoxerPria #CelanaSantai #Copenhagen #Cogen\r\n\r\n\r\n*Syarat dan Ketentuan', 499, 38800, 'https://drive.google.com/uc?export=view&amp;id=1ke0Sp_6UZxKOnET6GMYQBI3LvCP1w7og', 'Celana', 4.8, 509, 'Jakarta Barat'),
(5, 'JUMBO ARMY CELANA PENDEK PRIA', 'stok warna tidak mengikat , ingat kasih warna cadangan\r\n\r\nSpesifikasi produk:\r\nBahan: Sogo\r\nUkuran: ALLSIZE STANDARD\r\n*Lingkar pinggang bisa ditarik maksimal 130cm.\r\n*Panjang celana 57cm.\r\n\r\nDetail:\r\n-Pinggang karet\r\n-Terdapat 2 kantong disisi kanan bawah dan kiri bawah\r\n\r\nPilihan warna: Abu, Putih, Hijau , Cream', 698, 45500, 'https://drive.google.com/uc?export=view&amp;id=1rfxhOQC_NZICqLDR_20Kiw3tJTLp1sQD', 'Celana', 4.7, 355, 'Jakarta Utara'),
(6, 'Celana Pendek Surfing Dewasa Rip Motif', 'Celana Pendek Surfing Pria Motif Original - Celana Pendek Rip Pinggang Karet Motif - Celana Printing\r\n\r\nBahan babytery printing original pabrik great A (Terbaik dikelasnya) yang mempunyai standart kualitas import.\r\n\r\nPanjang Celana\r\n\r\n-All size ; 45cm\r\n-XL ; 58cm\r\n\r\nDetail model celana :\r\n- Pinggang memakai karet kolor\r\n- Kain memakai bahan babytery printing tebal dan halus (Great A)\r\n- Saku depan ada 2 (Kanan - kiri)\r\n\r\nWarna ; Hitam\r\n;Abu\r\n;Navy\r\n\r\n- Motif Random karena setiap minggu selalu ganti yang terbaru. Tapi motifnya bagus dan gak norak😍\r\n- Warna mungkin tidak 100% sama, karena pengaruh cahaya matahari', 12000, 18900, 'https://drive.google.com/uc?export=view&amp;id=1gAKCzHbovdIgfPsyrO_zatoUNWmtYpEV', 'Celana', 4.7, 133, 'Jakarta Selatan'),
(7, 'FELIX Celana Panjang Joger Polos Pria', 'FELIX Celana Panjang Joger Polos Pria Model Korea Okechuku\r\n\r\nMaterial : Baby Terry\r\n\r\nPilihan warna : Hitam / Navy / Abu Tua / Abu Muda / Krem / Hijau / Putih (di lapisi furing di bagian belakang sehingga tdk tembus pandang)\r\n\r\nDetail : Bahan Babytery berkualitas dgn tekstur halus dan nyaman di gunakan. Cocok utk di pakai segala macam aktifitas, baik utk hangout, nongkrong bareng teman, maupun utk olah raga.\r\n\r\nTerdapat kantong di kiri dan kanan,juga 1 kantong di bagian belakang. Terdapat tali di bagian depan (warna dan ukuran tali dapat berubah dari foto, tergantung ketersediaan tali di pasaran). Ujung kaki berupa karet, bukan rib. Pola / pattern dibuat unisex sehingga bisa dipakai pria maupun wanita.\r\n\r\nS\r\nLingkar pinggang : 62cm fit to 72cm\r\nPanjang : 90cm\r\nLingkar paha : 54cm\r\nLingkar Pinggul : 102cm\r\nLingkar betis : 30cm\r\n\r\nM/L (M fit to L)\r\nLingkar pinggang : 74cm fit to 84cm\r\nPanjang : 94cm\r\nLingkar paha : 64cm\r\nLingkar pinggul : 108m\r\nLingkar betis : 34cm\r\n\r\nXL/XXL (XL fit to XXL)\r\nLingkar pinggang : 82cm fit to 92cm\r\nPanjang : 96cm\r\nLingkar paha :68cm\r\nLingkar pinggul : 112cm\r\nLingkar betis : 38cm\r\n\r\n(Toleransi ukuran +/- 1-2cm karena proses potong dan jahit)\r\n\r\nPembeli harap memperhatikan dan mempertimbangkan detail ukuran di atas sebelum membeli.\r\n\r\nJam kerja :\r\nSenin - Sabtu\r\n08.00 - 16.00 WIB\r\nFast respon pada jam kerja, pemesanan dan pertanyaan di luar jam kerja akan diproses keesokan harinya.\r\n\r\nBUDAYAKAN MEMBACA SEBELUM MEMBELI\r\n*) Pemilihan warna&amp;ukuran hanya melalui kolom ETERANGAN&quot; saat order, bkn melalui CHAT &amp; DISKUSI, Jika tdk ditulis maka akan dikirim scr acak\r\n*) Wajib mendokumentasikan saat membuka paket dalam bentuk video untuk berjaga-jaga jika ada barang yang tidak sesuai /rusak/cacat sebagai syarat retur di toko kami\r\n\r\nMENERIMA PESANAN DALAM JUMLAH BANYAK (untuk seragam sekolah, kaos acara kantor/perusahaan). Kami juga menerima pesanan special order (desain custom / sesuai permintaan customer) dengan minimal order 100pcs.', 1234, 79900, 'https://drive.google.com/uc?export=view&amp;id=1dMBvyovcuPRAXiNs6fv3rzlMaNnK2ZMn', 'Celana', 4.8, 184, 'Jakarta Barat'),
(8, 'CHINO PANTS YAMATO BLACK - KIZARU', '[YAMATO BLACK]\r\n\r\nHidup dan segala dinamikanya adalah hutan rimbun imajinasi, laut bagi buih-buih kreatifitas, tak mengenal batas.\r\n\r\nKizaru World hadir merepresentasikan sudut lain kehidupan, disuguhkan secara apik hanya dengan kualitas terbaik.\r\n\r\nKarena setiap karya adalah cerita.\r\n\r\n[DETAILS]\r\n\r\nMaterial : Chino\r\nModel Product : Strecth Skinny Fit\r\nWarna : Black\r\nPackaging: Zip Plastic Bag.\r\nUntuk model menggunakan Size 30\r\nGeser ke kanan untuk size chart.\r\n\r\nSemua gambar adalah hasil proses foto langsung oleh tim, 100% Real Pictures, bukan gambar mock-up atau desain mentah Photoshop/Coreldraw, sehingga tidak perlu khawatir apabila produk yang diterima tidak sesuai dengan gambar.\r\n\r\n[OPERASIONAL]\r\n\r\nSenin - Jumat: 08.00 - 21.00 WIB.\r\nSabtu dan Minggu 13.00 - 20.00 WIB.\r\n\r\n[PENGIRIMAN]\r\n\r\nPengiriman paket dilakukan 2x sehari melalui JNE/JNT/SICEPAT/GOSEND/GRABSEND. Pemesanan sebelum jam 19.00 WIB akan dikirim di hari yang sama.\r\n\r\nFilosofi kami adalah One Day Service, proses dari pemesanan sampai pengiriman sangat cepat, ulasan rating 4,9 adalah bukti nilai yang sempurna, boleh dicek terlebih dahulu.\r\n\r\n[RETUR]\r\n\r\nKizaru World salah kirim size, cacat, atau kurang?\r\n\r\nBoleh diretur dengan menyertakan bukti video unboxing, komitmen kami adalah 100% kepuasan konsumen.\r\n\r\nSincerely,\r\nKizaru World official Store\r\n\r\n#Pants #Chino #Kizaru', 5000, 159000, 'https://drive.google.com/uc?export=view&amp;id=1owLaPL0khh-98TZ8KWV4exEZSNLbsvXQ', 'Celana', 4.9, 379, 'Kota Bandung'),
(9, 'Okechuku ARTHUR Celana Hypebeast', 'Bahan : Baby Canvas (tidak stretch)\r\n\r\nCelana Cargo jogger model terbaru dari Okechuku yang lagi kekinian banget. Celana polos, simple, basic, tapi keren banget. Ujung kaki dilengkapi karet membuat penampilan Anda terlihat santai dan casual.\r\n\r\nKantong celana di paha depan kiri dan kanan, kantong di paha samping kiri dan kanan yang dilengkapi dengan tutup pada kantongnya, juga terdapat buckle (pengunci kantong) dan variasi tali pada buckle. Pinggangnya terbuat dari karet dan terdapat tali di pinggangnya. Model trendy, bahan adem dan nyaman dipakai.\r\n\r\nTerdapat 4 pilihan warna :\r\n1. Hitam\r\n2. Abu-abu\r\n3. Hijau\r\n4. Putih (di lapisi furing di bagian belakang sehingga tdk tembus pandang)\r\n\r\nPilihan ukuran :\r\n1. Size S\r\n2. Size M/L (M fit to L)\r\n3. Size XL/XXL (XL fit to XXL)\r\n\r\nDetail ukuran dapat dilihat di foto (toleransi +/- 2cm dari yang tertera), diukur2 dulu ke badannya yah, untuk memastikan cocoknya ke ukuran apa.\r\n\r\nTinggi badan model di foto 178cm dan berat badan model 55kilo.\r\n\r\nPembeli harap memperhatikan dan mempertimbangkan detail ukuran di atas sebelum membeli.\r\n\r\nJam kerja :\r\nSenin - Sabtu\r\n08.00 - 16.00 WIB\r\nFast respon pada jam kerja, pemesanan dan pertanyaan di luar jam kerja akan diproses keesokan harinya.\r\n\r\nBUDAYAKAN MEMBACA SEBELUM MEMBELI\r\n*) Pemilihan warna&amp;ukuran hanya melalui kolom KETERANGAN saat order, bukan melalui CHAT &amp; DISKUSI, Jika tidak di tulis maka akan di kirim secara acak\r\n*) Juga Harap TULIS warna CADANGAN, jika warna utama tidak tersedia.\r\n*) Wajib mendokumentasikan saat membuka paket dalam bentuk video untuk berjaga-jaga jika ada barang yang tidak sesuai /rusak/cacat sebagai syarat retur di toko kami\r\n*) Jika anda memutuskan untuk MEMBELI maka kami anggap anda SETUJU dengan aturan di atas\r\n\r\nMENERIMA PESANAN DALAM JUMLAH BANYAK (untuk seragam sekolah, kaos acara kantor/perusahaan). Kami juga menerima pesanan special order (desain custom / sesuai permintaan customer) dengan minimal order 100pcs. Untuk info lebih lanjut, dapat langsung chat admin', 5000, 99900, 'https://drive.google.com/uc?export=view&amp;id=1z-XUAysCPqbZ8yj54w0lyjbZ4TagQ0p6', 'Celana', 4.9, 124, 'Jakarta Barat'),
(10, 'Celana Unisex Erigo Chino Pants Sirius Katun Black', 'Chino Pants Erigo saat ini merupakan salah satu lini pakaian terbaik dan berkualitas tinggi di antara Local Brand Indonesia. Chino Pants are undoubtedly an essential style! Selain serba guna karena modis, celana ini juga merupakan must-have item bagi para pria. Erigo Chino Pants di design dengan warna indah dengan kain pilihan yang membuatmu nyaman sepanjang hari. Memiliki live-button, resleting, belt loop, dan 4 saku simpel pada bagian pinggul.\r\n\r\nUntuk Model Pria: Tinggi 185-186 cm, Berat 75 kg, Menggunakan Ukuran XL\r\nUntuk Model Wanita: Tinggi 168-170 cm, Berat 55 kg, Menggunakan Ukuran M\r\n\r\nBahan: Katun\r\nModel Produk: Stretch Skinny Fit\r\n\r\nDetail Ukuran:\r\n28= Lebar Pinggang: 33,5 cm x Lebar Bawah: 14,5 cm x Panjang Celana: 98 cm\r\n30= Lebar Pinggang: 36 cm x Lebar Bawah: 15 cm x Panjang Celana: 99 cm\r\n32= Lebar Pinggang: 38 cm x Lebar Bawah: 15,5 cm x Panjang Celana: 100 cm\r\n34= Lebar Pinggang: 42 cm x Lebar Bawah: 16,5 cm x Panjang Celana: 102 cm\r\n36= Lebar Pinggang: 43 cm x Lebar Bawah: 17 cm x Panjang Celana: 104,5 cm\r\n38= Lebar Pinggang: 46 cm x Lebar Bawah: 18 cm x Panjang Celana: 105 cm\r\n40= Lebar Pinggang: 49 cm x Lebar Bawah: 18,5 cm x Panjang Celana: 106 cm\r\n\r\n*Diukur secara manual, toleransi ukuran ± 1-2 cm.\r\n\r\nWarna Selvedge:\r\nMerah biru dan Putih.\r\nUntuk warna Selvedge akan dikirim random sesuai ketersediaan.', 999, 130000, 'https://drive.google.com/uc?export=view&amp;id=1pbqtgPX_t4IvxqEKZ1v6E1mQjgMFMMr8', 'Celana', 4.9, 197, 'Kota Tangerang'),
(11, 'Ando Official Sepatu Irvine Pria Dewasa', 'Sepatu Irvine ini didesain untuk menunjang berbagai aktifitas Anda sehari-hari. Bagian atas menggunakan bahan tekstil dan kulit sintetis yang berkualitas dan tahan lama. Sepatu ini menggunakan sol sintetis Direct Injection sehingga daya rekat antara bagian atas dengan sol sangat kuat. SIZE CHART PRIA (CM) 22 = 14,6 23 = 15,3 24 = 16 25 = 16,5 26 = 17,5 27 = 18 28 = 19 29 = 19,5 30 = 20,5 31 = 21 32 = 21,5 33 = 22 34 = 22,5 35 = 23 36 = 23,5 37 = 24,5 38 = 25 39 = 25,5 40 = 26 41 = 27 42 = 27,5 43 = 28 44 = 28,5 45 = 29  WANITA (CM) 22 = 14,6 23 = 15,3 24 = 16 25 = 16 26 = 16,5 27 = 17,5 28 = 18 29 = 19 30 = 19,5 31 = 20 32 = 20,5 33 = 21 34 = 21,5 35 = 22 36 = 23 37 = 23,5 38 = 24,5 39 = 25 40 = 25,5 41 = 26', 500, 144000, 'https://drive.google.com/uc?export=view&amp;id=1hnX6HahK_DlzyY8oPEv83a8irsO5aSWh', 'Sepatu', 4.9, 231, 'Kota Tangerang'),
(12, 'Sepatu Ardiles Cagiva', 'HARGA TERMURAH...!!!!!\r\n\r\nSILAHKAN KUNJUNGI TOKO KAMI...\r\nBANYAK PILIHAN SANDAL MAUPUN SEPATU NYA...DIJAMIN HARGA PALING MURAH SEJAGAT RAYA DAN DENGAN KUALITAS PRODUK TERBAIK... SILAHKAN FOLLOW TOKO KAMI AGAR BISA DAPATKAN INFO TER UPDATE DARI PRODUK YANG KAMI JUAL. KEPUASAN PELANGGAN MENJADI PRIORITAS UTAMA KAMI. DAN BUDAYAKAN MEMBACA DESKRIPSI PRODUK SEBELUM MEMBELI ...🙏🙏🙏\r\n\r\n\r\nSepatu ARDILES CAGIVA 100% original.\r\nSol phylon\r\nRingan,\r\nKuat,\r\nKeren modelnya dan fashionable.\r\n\r\nSol phylon Slip on style, slip on nya memberi Anda kemudahan ketika memakai dan melepas sepatu.\r\n\r\nBarang yang kami jual ORIGINAL pabrik Ardiles...!!!!!\r\nbukan barang KW...!!!\r\nHarga murah yang kami berikan ini karena kami tangan pertama langsung dari pabrik.\r\n\r\nPENTING...!!!!!\r\n\r\nPerhatikan panjang kaki (dalam cm) sebelum memesan :\r\n\r\nNB: jika biasa pakai 39 disarankan ambil size 40 aja dan seterusnya begitu / naik satu nomer...!!!!!!\r\n\r\n39 = panjang kaki 23.5 cm\r\n40 = panjang kaki 24 cm\r\n41 = panjang kaki 24.5 cm\r\n42 = panjang kaki 25 cm\r\n43 = panjang kaki 25.5 cm\r\n44 = panjang kaki 26 cm\r\n\r\n\r\n**SILAKAN MEMESAN SESUAI PANDUAN UKURAN YANG TERTERA, KARENA SETIAP MODEL DAN MERK BERBEDA UKURANNYA\r\n\r\nDi TOKO KAMI PACKING PAKAI EXTRA GRATIS BUBBLE WRAP SEMUA SEHINGGA LEBIH AMAN PACKING NYA DAN GAK MUDAH RUSAK BARANG NYA...!!!\r\n\r\nJANGAN LUPA KASIH BINTANG 5 + FOTO SERTA KOMENTAR NYA YA KAKAK...\r\n\r\nTERIMA KASIH TELAH BERKUNJUNG KE TOKO KAMI SEMOGA KITA SEMUA SEHAT...BAHAGIA....BERKAH...DAN AMANAH SELALU... AMIIIN... AMIIIN... AMIIIN... !!!\r\n\r\nHAPPY SHOPPING ❤\r\n\r\nTERIMA KASIH 🙏🙏🙏', 200, 53000, 'https://drive.google.com/uc?export=view&amp;id=1anFq8gyPB1R_yhhiN_TXP3n3La5Ne3Jk', 'Sepatu', 4.6, 333, 'Jakarta Selatan'),
(13, 'Sepatu safety caterpillar ori', 'sepatu safety caterpillar\r\nsize 39,40,41,42,42,43,44\r\nsol karet anti slip\r\nsafety lapis besi diujung sepatu\r\n\r\n\r\nsangat cocok digunakan diberbagai kegiatan harianmu\r\ndengan model simple dan modis sangat memungkinkan bisa dugunakan sebagai sepatu kerja sepatu gunung sepatu hiking outdoor indoor dsb\r\n\r\n\r\nlangsung order ya gan\r\ndemikian moga berkenan\r\n\r\ntrimaksih\r\n\r\n\r\nsepatu caterpillar pendek\r\nsepatu caterpillar casual\r\nsepatu safety caterpillar\r\ncatterpilar', 185, 116000, 'https://drive.google.com/uc?export=view&amp;id=1_oQvSPcOYNUyyALkhDrlhJUGEy3Z4RKe', 'Sepatu', 4.8, 222, 'Jakarta Selatan'),
(14, 'Sepatu Nike Zoom DynaBlast', 'TELITI SEBELUM MEMBELI, TANYAKAN STOK SEBELUM MEMBELI.. .\r\nTRANSAKSI AMAN MUDAH\r\nTERPERCAYA VIA TOKO PEDIA\r\nNO TIPU TIPU...\r\n\r\nBARANG 100% BARU + BOX\r\nKUALITAS PREMIUM ORIGINAL\r\n\r\nTERSEDIA DARI UKURAN:\r\n\r\nSEPATU PRIA\r\nSIZE 40 41 42 43 44 45\r\n\r\nBARANG YG DI KIRIM SESUAI DENGAN DESKRIPSI\r\n\r\n\r\nSELAMAT BERBELANJA.....', 300, 450000, 'https://drive.google.com/uc?export=view&amp;id=1EtFgVNeMzYGRhsOyAB62QYGJ9tZxA2yj', 'Sepatu', 4.9, 525, 'Kota Bandung'),
(15, 'Hush Puppies Sepatu Pria Connor', 'More Information\r\nBrand : Hush Puppies\r\nColor :\r\nStyle : Sneakers\r\nMaterial : Canvas\r\n\r\nDetail Size :\r\nSize 40 (070) = 25.5 cm\r\nSize 41 (080) = 26.5 cm\r\nSize 42 (090) = 27.5 cm\r\nSize 43 (100) = 28.5 cm\r\nSize 44 (110) = 29.5 cm\r\nSize 45 (120) = 30.5 cm\r\n\r\nHindari tempat basah dan lembab\r\nSimpan dalam kotak dengan gel silica.', 430, 900000, 'https://drive.google.com/uc?export=view&amp;id=1NLL4s3wboSAZGSCgxsZdk--bFyOoUpKP', 'Sepatu', 4.8, 223, 'Kota Tangerang'),
(16, 'Sepatu Sneakers Casual 21AA30', 'TIDAK AKAN JEBOL setelah dicuci atau kehujanan karena menggunakan tekhnologi baru Shoes Injection Mould bahan sole dicairkan dengan tekanan tinggi menyatu sempurna dengan bahan kain dari sepatu tanpa menggunakan proses lem.\r\n\r\nBahan : Kanvas\r\n\r\nPanduan ukuran :\r\nUkuran 36 Panjang telapak kaki 23,4 cm\r\nUkuran 37 Panjang telapak kaki 24,0 cm\r\nUkuran 38 Panjang telapak kaki 24,7 cm\r\nUkuran 39 Panjang telapak kaki 25,3 cm\r\nUkuran 40 Panjang telapak kaki 26,0 cm\r\nUkuran 41 Panjang telapak kaki 26,6 cm\r\nUkuran 42 Panjang telapak kaki 27,3 cm\r\nUkuran 43 Panjang telapak kaki 28,0 cm\r\nUkuran 44 Panjang telapak kaki 28,7 cm\r\nUkuran 45 Panjang telapak kaki 29,3 cm\r\n\r\nBelanja langsung dari pabrik nya\r\nnow everyone can buy a good shoe\r\n\r\nRESELLER dan DROPSHIPER very welcome\r\ndapatkan discount spesial dari pabrik langsung\r\n\r\n*Semua stok dijamin ready\r\n*Open order 24 jam\r\n*Fast response jam 08.00-16.00 Senin s/d Sabtu\r\n*Order diatas jam 09.00 akan di proses pada hari berikutnya\r\n*Order pada hari minggu dan hari libur Nasional, akan kami proses pada hari kerja', 210, 120000, 'https://drive.google.com/uc?export=view&amp;id=1Qb_1jRZ0HdBshveE0UbKe8K2kg5yd6KY', 'Sepatu', 4.9, 446, 'Jakarta Selatan'),
(17, 'Redknot Triple Hitam Sepatu Slip On Pria', 'Yes kita akhirnya buat sepatu slip on dengan model terkini. Redknot Triple yang udah kalian tunggu-tunggu akhirnya datang juga. Cocok banget buat kamu yang males banget ikat tali sepatu lagi. Tinggal flop dan langsung Go !!\r\n\r\nCocok digunakan untuk :\r\nKegiatan sehari-hari\r\nPergi ke kampus / sekolah\r\nHangout dengan teman\r\n\r\nProduct Specification :\r\nUpper : Canvas\r\nSole Rubber\r\nBerat sepatu : 277 Gram\r\nMade in Indonesia\r\n\r\nWhat in The Box :\r\n1 pasang sepatu', 515, 126000, 'https://drive.google.com/uc?export=view&amp;id=1Z2vspnHxP_MZ_jdvZUSJiuDf5JFsqP5H', 'Sepatu', 4.9, 223, 'Jakarta Utara'),
(18, 'Converse El Distrito', 'Patent Bright. Always reliable. The Converse El Distrito Low Top sneaker was designed to hold up to daily wear and tear with durable canvas upper materials, plus extra padding in the tongue and lining. A soft twill upper with a punch of bold color stands out. The patent Star Chevron logo shines.\r\nUS 3 = 21 CM\r\nUS 3.5 = 21.5 CM\r\nUS 4 = 22 CM\r\nUS 4.5 = 22.5 CM\r\nUS 5 = 23 CM\r\nUS 5.5 = 23.5 CM\r\nUS 6 = 24 CM\r\nUS 6.5 = 24.5 CM\r\nUS 7 = 25 CM\r\nUS 7.5 = 25.5 CM\r\nUS 8 = 26 CM\r\nUS 9 = 27 CM\r\nUS 9.5 = 27.5 CM\r\nUS 10 = 28 CM\r\nUS 10.5 = 28.5 CM\r\nUS 11 = 29 CM\r\nUS 11.5 = 29.5 CM\r\nUS 12 = 30 CM\r\nUS 12.5 = 30.5 CM\r\nUS 13 = 31 CM\r\nUS 13.5 = 31.5 CM\r\nUS 14 = 32 CM\r\nUS 14.5 = 32.5 CM\r\nUS 15 = 33 CM\r\nUS 16 = 34 CM\r\nUS 17 = 35 CM\r\nUS 18 = 36 CM\r\nUS 19 = 37 CM\r\nUS 20 = 38 CM\r\nUS 21 = 39 CM\r\nUS 22 = 40 CM\r\nUS 23 = 41 CM', 223, 515000, 'https://drive.google.com/uc?export=view&amp;id=1WWmx7ug7A0WISen2IGFNYlyQmv0heMvs', 'Sepatu', 4.9, 23, 'Kota Tangerang'),
(19, 'Ando Official Sepatu Irvine Pria Dewasa', 'Sepatu Irvine ini didesain untuk menunjang berbagai aktifitas Anda sehari-hari. Bagian atas menggunakan bahan tekstil dan kulit sintetis yang berkualitas dan tahan lama. Sepatu ini menggunakan sol sintetis Direct Injection sehingga daya rekat antara bagian atas dengan sol sangat kuat.\r\nSIZE CHART\r\nPRIA\r\n(CM)\r\n22 = 14,6\r\n23 = 15,3\r\n24 = 16\r\n25 = 16,5\r\n26 = 17,5\r\n27 = 18\r\n28 = 19\r\n29 = 19,5\r\n30 = 20,5\r\n31 = 21\r\n32 = 21,5\r\n33 = 22\r\n34 = 22,5\r\n35 = 23\r\n36 = 23,5\r\n37 = 24,5\r\n38 = 25\r\n39 = 25,5\r\n40 = 26\r\n41 = 27\r\n42 = 27,5\r\n43 = 28\r\n44 = 28,5\r\n45 = 29\r\n\r\nWANITA\r\n(CM)\r\n22 = 14,6\r\n23 = 15,3\r\n24 = 16\r\n25 = 16\r\n26 = 16,5\r\n27 = 17,5\r\n28 = 18\r\n29 = 19\r\n30 = 19,5\r\n31 = 20\r\n32 = 20,5\r\n33 = 21\r\n34 = 21,5\r\n35 = 22\r\n36 = 23\r\n37 = 23,5\r\n38 = 24,5\r\n39 = 25\r\n40 = 25,5\r\n41 = 26', 145, 144000, 'https://drive.google.com/uc?export=view&amp;id=1hnX6HahK_DlzyY8oPEv83a8irsO5aSWh', 'Sepatu', 4.9, 321, 'Kota Tangerang'),
(20, 'TOMKINS Aniara - 40', 'Sport kasual yang nyaman dipakai sepanjang hari.\r\n- Warna Hitam\r\n- Material Mesh\r\n- Sole Phylon\r\n- 4 Pasang Eyelet\r\n​- Insole Mesh Foam\r\n\r\nSize Chart\r\n\r\n36 = 23,0 cm\r\n37 = 23,5 cm\r\n38 = 24,5 cm\r\n39 = 25,2 cm\r\n40 = 25,6 cm\r\n41 = 26,5 cm\r\n42 = 27,0 cm\r\n43 = 27,8 cm', 840, 190000, 'https://drive.google.com/uc?export=view&amp;id=1ewAw_xa4e1menDbpbyxnwDsnmyD5k25C', 'Sepatu', 4.7, 521, 'Kota Bandung'),
(21, 'Dane and Dine BLEKA LOW NEW', 'BLEKA , Sepatu sneakers dengan Low Cut, membuat anda menjadi stylish dan percaya diri saat menggunakannya. Sangat cocok dikenakan saat berkendara atau sedang hang out bersama teman, dan sekedar jalan jalan.\r\nDibuat dengan bahan Leather, membuat sepatu ini sangat awet dan tahan lama walaupun terkena air dan sinar matahari yang berlebih. Juga dengan alas yang terbuat dari bahan karet mentah,sehingga tidak licin saat digunakan dan kuat sebagai alas pijakan anda.\r\n\r\n- Upper Leather\r\n- Outsole Rubber\r\n- Insole Latex Foam\r\n- Sneaker Model\r\n\r\nSize Chart Insole :\r\n\r\nSize 39 : 25,5 cm\r\nSize 40 : 26 cm\r\nSize 41 : 26,5 cm\r\nSize 42 : 27 cm\r\nSize 43 : 28 cm', 620, 129000, 'https://drive.google.com/uc?export=view&amp;id=1X6pLWpPB7dqAUNcnirnu-jaxewBbdng_', 'Sepatu', 4.8, 321, 'Jakarta Selatan'),
(22, 'Kaos Pria', 'TERIMA KASIH sdh mengunjungi online shop Doaibu FASHION\r\nsebelum order ada baiknya membaca deskripsi dibawa ini\r\nukuran kita lokal .. CONTOH : Yang biasa pakai ukuran M,, bisa naikin satu size jadi order.size. L. aja ya ,, di harap kan pilih sesuai varian warna dan size nya (tulis dalam catatan) ,, karna beda ukuran beda harga ,, kalau tidak akan di kirim secara RANDOM ,,1kg(6baju) TERIMA KASIH .\r\nKUALITAS PRODUK TERJAMIN ,, HARGA BERSAING .\r\nINGAT . . apabila ada kerusakan produk cacat/bs kami akan bertanggung jawab !!!\r\n\r\nADA BERBAGAI VARIAN WARNA ✓\r\n\r\nKAOS OBLONG SABLON DIGITA// BAHAN HIGH QUALITY ✓\r\n\r\nMASIH ADA VARIAN WARNA LAIN YANG TIDAK TERTERA/TERTULIS DI PILIHAN VARIAN WARNA ,, CARA ORDER = PILIH SALAH SATU WARNA DAN TULIS DI CATATAN WARNA YANG MAU DI ORDER/DI PILIH .\r\n\r\nUKURAN ,, LEBAR-PANJANG\r\nBisa untuk ,, Family seragam dll\r\nBAHAN COTTON 30S\r\nM 42CM X 62CM\r\nL 47CM X65CM\r\nXL 50CM X68CM\r\nXXL 56X76CM\r\n(LD XTINGGI) harap pilih pilih sesuai varian karna beda ukuran beda harga 1kg muat 6baju', 500, 24000, 'https://drive.google.com/uc?export=view&amp;id=1PP7z4XqclX9aQtxKAQR6YfV4enrHO8b7', 'Baju', 4.8, 765, 'Jakarta Barat'),
(23, 'KOBE T-SHIRT', 'Kaos Polos Pria Premium Cotton Combed 30s.\r\n\r\n\r\n\r\nBarang ready stock selama masih bisa di klik atau bisa konfirmasi lewat diskusi atau chat.\r\n\r\nDetails:\r\n- Bahan dijamin 100% Katun Combed Premium yang memiliki tingkat kelembutan yang tinggi.\r\n- Bahan nyaman, halus dan yang pasti menyerap keringat untuk kegiatan sehari-hari.\r\n- Memiliki jahitan yang sangat rapih.\r\n- Dijamin tidak menyesal dan kami menawarkan pengembalian uang 100% jika barang yang anda terima cacat dan tidak sesuai ekspektasi (S&amp;K berlaku).\r\n- Foto katalog diatas memiliki kemiripan warna 99% dengan warna asli produk.\r\n- Harga produk kami memang lebih tinggi daripada seller lain tetapi kualitas bahan dan jahitan SANGAT BERBEDA dengan toko yang menjual dengan harga 30.000 ribuan\r\n\r\nModel diatas menggunakan size L\r\n\r\nSize S-XL (Lebar Dada x Panjang)\r\nS: 48cm x 68cm\r\nM: 50cm x 70cm\r\nL: 54cm x 72cm\r\nXL: 56cm x 74cm\r\nXXL: 58cm x 76cm\r\n\r\nTerimakasih dan Selamat Berbelanja!', 699, 79000, 'https://drive.google.com/uc?export=view&amp;id=1pBzlgKOtZq6jCyd88oo0AxYcO9XXZ00a', 'Baju', 4.8, 18, 'Jakarta Utara'),
(24, 'Blouse Wanita motif bunga', 'Blouse Motif\r\nLC 1514\r\n1kg = 10pcs\r\n\r\nBAHAN : MISBEE (Super Stretch)\r\nDETAIL UKURAN :\r\n(LD = Lingkar Dada / PJ = Panjang)\r\n* LD = 98cm (MELAR SAMPAI 110cm)\r\n* PJ = 65cm\r\n* Muat sampai berat + - 70 Kg\r\n\r\n#blousewanita #blousewanitamurah #blousewanitajumbo #blousewanitabigsize #bajuwanita #bajuwanitamurah #bajuwanitajumbo #bajuwanitabigsize #blousecewek #blousecewekmurah #blousecewekbigsize #blousekembangkecil #blousesakuraJUMBO #blousemotifwanitaBIGSIZE #blousemotifwanita\r\n\r\n\r\nTerima kasih!', 500, 29500, 'https://drive.google.com/uc?export=view&amp;id=1x-d-nrPOP78Wye94yI8GoBxInGQwlqTA', 'Baju', 5, 2, 'Jakarta Utara'),
(25, 'Kaos Polos', 'Kenapa Kepuasan Kakak TERJAMIN\r\n\r\n-) Satu-Satunya yang Menggunakan Bahan Asli berkwalitas\r\n\r\n-) Jahitan Sudah Menggunakan Jahitan Rantai\r\n*TER-Standarisasi Jahitan Distro\r\n\r\n-) RIB / Kerah Leher Menggunakan Bahan Sangat Tebal , Sehingga Tidak Gampang Rusak / Longgar\r\n\r\n-) Tag Label Ukuran Kami Berbeda dari yang lain\r\n\r\n-) Kami Menggunakan Jenis Benang Katun Kualitas Paling Atas, itulah Yang Membuat Kaos Kami Sangat Nyaman Digunakan\r\n\r\nSilahkan Di Order dan Buktikan Sendiri ya Kak..\r\n\r\nTersedia  Ukuran M-L-XL-XXL\r\nM ld 48 cm x pjg 68 cm\r\nL ld 50 cm x pjg 70 cm\r\nXL ld 52 cm x pjg 72 cm\r\nXXL ld 54 cm x pjg 74 cm\r\n\r\n\r\nKaospolo #Poloshirt #Polosan #Kaos #Kaoskerah #Kaosparta #Kaospromosi #kaospolosan #kaospolos #kaosmurah #w#angki #lakoste #kaos #Tshirt #Seragam #kaosevent #kaosgatering\r\ntoleransi size 1 - 2 cm', 500, 18800, 'https://drive.google.com/uc?export=view&amp;id=1VX1hGSlAf_nyxljAlOg2lvaKeg5VzuMm', 'Baju', 4, 784, 'Jakarta Barat'),
(26, 'KIZARU T-Shirt Polos', '[BASIC: JIRAIYA]\r\n\r\nHidup dan segala dinamikanya adalah hutan rimbun imajinasi, laut bagi buih-buih kreatifitas, tak mengenal batas.\r\n\r\nKizaru World hadir merepresentasikan sudut lain kehidupan, disuguhkan secara apik hanya dengan kualitas terbaik.\r\n\r\nKarena setiap karya adalah cerita.\r\n\r\n[DETAILS]\r\n\r\nMaterial: 100% Cotton Combed 30s.\r\nWarna: Hitam, dan Hijau Botol\r\nWarna dapat dipilih saat mau checkout\r\n\r\nPackaging: Zip Plastic Bag.\r\nModel Pria : Tinggi 175cm, Berat 56kg, menggunakan ukuran M saat sesi pemotretan.\r\n\r\n[OPERASIONAL]\r\n\r\nSenin - Jumat: 08.00 - 21.00 WIB.\r\nSabtu dan Minggu 13.00 - 20.00 WIB.', 699, 65000, 'https://drive.google.com/uc?export=view&amp;id=1zzbf1VYuvj9FjScH-6EmfY3aKm40lm_4', 'Baju', 5, 107, 'Kota Bandung'),
(27, 'Kaos Pria Henley Lengan Panjang', 'Holaaa!\r\n\r\nBosen sama kaos polos yang gitu-gitu aja? RAVA TEES dengan bahan katun yang lembut dan nyaman digunakan tidak gerah dengan kualitas premium, cocok dipakai sehari-hari untuk main, kuliah, travelling, acara resmi, dll.\r\n\r\nSize Chart [Panjang x Lebar]\r\n\r\nS - 67 x 46\r\nM - 69 x 48\r\nL - 71 x 50\r\nXL - 74 x 53\r\n\r\nFabric : 100% Cotton Import\r\nProfessional Cutting\r\n\r\nWAJIB TANYA STOK AGAR TIDAK TERJADI SALAH PENGIRIMAN :)', 1234, 69900, 'https://drive.google.com/uc?export=view&amp;id=1Y-rMclnLibpgs5N_ye7FZ4LFKIvttGLJ', 'Baju', 4.8, 249, 'Kota Bandung'),
(28, 'Kaos JUJUTSU KAISEN', '► GRATIS ONGKIR (✓)\r\n► COD / BAYAR DITEMPAT (✓)\r\n► FREE STICKER JEJEPANGAN (✓)\r\n► PRODUK BARU SETIAP TANGGAL 1 (✓)\r\n► GARANSI PRODUK (✓)\r\n► SELALU READY STOCK (✓)\r\n► UKURAN DARI ANAK SAMPAI BIG SIZE DEWASA (✓)\r\n► BAHAN COTTON COMBED 30S / HOODIE COTTON FLEECE (✓)\r\n► BISA DIPAKAI PRIA MAUPUN WANITA (✓)\r\n\r\n*HARAP PERHATIKAN UKURAN SAAT MEMESAN!*\r\n(UKURAN BISA DICEK DI PANDUAN UKURAN / SLIDE PADA GAMBAR PRODUK)\r\nJIKA TERBIASA MEMAKAI UKURAN LUAR / LONGGAR MOHON UP 1 SIZE KARENA PRODUK KAMI MENGGUNAKAN SIZE LOKAL (SLIM FIT)\r\n\r\n#INUMAKITOGE #JUJUTSUKAISEN #GOJOU #ITADORI #ANIME #MANGA #KAOSDISTRO #JAKETDISTRO #BAJUJEPANG #JEJEPANGAN #MURAH #COD #KAOSMURAH #BAYARDITEMPAT #GRATISONGKIR #GROSIRAN', 699, 38500, 'https://drive.google.com/uc?export=view&amp;id=1AAkHKsPV1mxNgxAqbhb-k829J4hOxoVo', 'Baju', 4.8, 169, 'Kota Tangerang'),
(29, 'Lastkiss T-Shirt Faith', 'Apa yang anda akan dapatkan dari keuntungan membeli produk kami ?\r\nDibuat dengan material terbaik di dunia (Menurut Riset Google)\r\nPrinting/Sablon menggunakan plastisol yang merupakan cat level high end\r\nFull spec dan feature\r\nHarga dibawah pasaran dengan kualitas sebanding\r\nSemua Produk BERGARANSI\r\nDesain full art Urban Streetwear\r\nSelalu up to date\r\nFitur Teknologi Heattech : Bahan Lebih Lembut\r\nFitur Teknologi Micro Fiber Tech : 1.2 Lebih Cepat Menyerap Keringat', 500, 69900, 'https://drive.google.com/uc?export=view&amp;id=1p9vxY-rYYugauGNCFw3lePHYuhjVdCMu', 'Baju', 4.9, 76, 'Kota Bandung'),
(30, 'KREMLIN T-Shirt Kaos Hitam', 'Deskripsi :\r\n- Regular Fit\r\n- Material 100% combed cotton 30s\r\n- Sablon Discharge\r\n- Design Unisex\r\n- Dibuat dengan kualitas jahitan dan sablon terbaik\r\n\r\nSize Chart:\r\nM : Panjang 71 - Lebar 48\r\nL : Panjang 73 - Lebar 50\r\nXL : Panjang 75 - Lebar 52\r\nXXL: Panjang 77 - Lebar 54\r\n\r\nSebelum klik BELI Pastikan :\r\n- Jumlah produk yang akan di BELI sudah sesuai\r\n- Ukuran produk yang akan di BELI sudah pas\r\n- TANYAKAN stok terlebih dahulu ya boiss\r\n\r\nKARAKTER SABLON DISCHARGE\r\nSebagian Besar produk kaos kita memakai Sablon Discharge, jadi yang belum tau Sablon Discharge disini kita coba Jelasin Efek Sablon Discharge :\r\n\r\n- Jenis sablon lebih tahan lama dan bebas luntur ( terlihat seperti retak ) itu normal karena akan menonaktifkan zat warna pada kain dan mengganti dengan warna tinta sablon. Karena bisa menyerap pada serat kain, lapisan sablon ini bisa disetrika maka akan menghasilkan sablon yang cenderung tidak kaku.\r\n\r\n- Discharge akan maksimal hasilnya jika digunakan pada warna gelap, dan aman saat dicuci menggunakan Mesin cuci atau kucek manual .\r\n\r\nHappy Shopping ^^,\r\n\r\n#kremlin #kremlincatalog #kremlinclothing #clothingbrand #clothing #localbrandindonesia #clothingcompany #bandung #jakarta #indonesia #newarrival #style #readystock #fashion\r\n#fashionindonesia #onlineindonesia #supportlocalbrand #distroindonesia\r\n#tshirt #kaos #bandungdistro #jakcloth', 1234, 74900, 'https://drive.google.com/uc?export=view&amp;id=1PhfMmhetoRdoXvyAPgytJbIcfDALKCMt', 'Baju', 4.8, 321, 'Kota Bandung'),
(31, 'Baju Kaos Madura', 'READY STOCK!\r\nSangat cocok untuk dipakai sehari-hari, event, komunitas, dan lain-lain. Be smart yaa, harga boleh murah tapi KUALITAS gak murahan :)\r\n\r\nOrder akan diproses paling lambat 1x24 jam, pembayaran sebelum jam 2 siang akan dikirim di hari yang sama.\r\n\r\nTerima kasih &amp; selamat berbelanja ♥♥\r\n\r\n—————\r\n\r\nKaos Sakera Madura Dewasa, Pakaian Adat Madura, Lorek Madura, Kaos Salur Merah Putih, Kaos Salur Hitam Putih\r\n\r\n—————\r\n\r\nBahan: Katun 24s\r\nWarna: Salur Merah Putih\r\n\r\n—————\r\n\r\nSIZE CHART\r\nS: Lebar Dada 43cm, Panjang 60cm\r\nM: Lebar Dada 45cm, Panjang 62cm\r\nL: Lebar Dada 48cm, Panjang 68cm\r\nXL: Lebar Dada 52cm, Panjang 70cm\r\nXXL: Lebar Dada 56cm, Panjang 73cm', 897, 36000, 'https://drive.google.com/uc?export=view&amp;id=1gbz0r8MB_d_XPtLi0HOGioVfQUxIUAhT', 'Baju', 4.9, 431, 'Jakarta Utara'),
(32, 'Notale Air Purifier with HEPA', 'Notale Air Purifier\r\n\r\nSize: 272*303*498mm\r\nWarranty: 2 years\r\nSpecs:\r\nCADR: 400m3/h\r\nInput: AC100-120V 60Hz; AC 220-240V 50Hz\r\nCoverage area: up to 50m2\r\nPower: 48W\r\n\r\nAdvantages:\r\n1. Night light\r\n2. Child lock\r\n3. 2 / 4 / 8h timer\r\n4. High/Mid/Low mode\r\n5. With air quality sensor\r\n6. Warn to replace filter after working 2200h\r\n\r\nFeatures &amp; Details\r\n1. UV Sterilizer &amp; 3 in 1 HEPA Filter\r\nEfektif menangkap dan membunuh virus, bakteri, polusi.\r\n2. Smart Life Application (android &amp; ios)\r\nWifi connection\r\n3. Coverage area: up to 50m2\r\n4. – Night light\r\n– Child lock\r\n– 2/4/8h timer\r\n– High/Mid/Low mode\r\n5. 2 Years Warranty', 500, 1690000, 'https://drive.google.com/uc?export=view&amp;id=1tlrnlfuRohaYqSvXyORsMHiwQK4a6pYD', 'Elektronik', 5, 122, 'Jakarta Selatan'),
(33, 'Bose SoundLink Mini II Special Edition', 'Garansi resmi dan servis selama 1 tahun hanya berlaku untuk barang yang diimpor oleh PT. Prima Audio Indonesia.\r\n\r\nBaterai tahan hingga 12 jam\r\nMendengarkan musik sepanjang hari di kantor, dirumah, atau dimana pun lebih lama tanpa khawatir kehabisan baterai.\r\n\r\nBass yang dahsyat di ukuran yang kecil\r\nMembuat suara musik lebih hidup tanpa harus menggunakan speaker yang besar. Dengan suara bass yang dahsyat dapat membangun mood kamu ketika mau mendengarkan lagu-lagu EDM dan juga cocok untuk segala genre musik.\r\n\r\nSpeakerphone\r\nAnda bisa gunakan Bose SoundLink Mini II Special Edition pada saat anda melakukan conference call untuk keperluan meeting pekerjaan anda. Atau bisa anda gunakan juga ketika melakukan telepon dengan kerabat anda.\r\n\r\nEasy Connect\r\nCukup satu kali pairing dengan Bose SoundLink Mini II Special Edition, maka akan mengingat dan otomatis tersambung dengan smartphone/laptopmu setiap kali kamu nyalakan.\r\n\r\nSpesifikasi :\r\nDimensi : 18cm (p) x 5.8cm (l) x 5.1cm (t) -- 0.7Kg\r\nInput : 3.5mm auxiliary\r\nWireless range up to 9M\r\nDaya tahan baterai sampai dengan 12 jam\r\n\r\nDi dalam boks:\r\nBose SoundLink Mini II Special Edition\r\nKabel USB-A to USB-C', 699, 3149000, 'https://drive.google.com/uc?export=view&amp;id=1xApNj0Khe0BVaFd1M-1jIbwkMchA0o9S', 'Elektronik', 4.7, 872, 'Jakarta Utara'),
(34, 'Miyako MCM-18BH Rice Cooker', 'Miyako MCM-18BH, Rasa Nasi Lebih Enak dan Pulen\r\nMiyako MCM-18BH adalah sebuah penanak nasi yang juga dapat berfungsi untuk menghangatkan dan mengukus aneka jenis masakan, sehingga proses memasak lebih efektif dan efisien. Perangkat ini memiliki kapasitas beras sebesar 1, 8 L dan nasi sebanyak 5 L, kapasitas yang pas untuk dapur rumahan.\r\n\r\nMiyako MCM-18BH memiliki ukuran sebesar 295 x 295 x 318 mm, serta menggunakan daya listrik sebesar 395 watt. Miyako MCM-18BH menggunakan perangkat pengukus nasi dengan lapisan hard anodized menjadikan perangkat ini awet, tahan lama, dan tidak mudah tergores. Serta dilengkapi juga fitur untuk menampung uap panas, sehingga nasi tidak mudah basi dan rasanya pulen.\r\n\r\nSPESIFIKASI PRODUK :\r\n- Fungsi : Memasak, Menghangatkan, Mengukus\r\n- Kapasitas Beras : 1.8 L\r\n- Kapasitas Nasi : 5 L\r\n- Bodi : Plastik\r\n- Alumunium Pan : Berlian Hitam\r\n- Steamer : yes\r\n- Penghangat Otomatis : yes\r\n- 3 in 1 All Around Heating : yes\r\n- Daya : 395 W\r\n- Tegangan : 220 VAC', 699, 279000, 'https://drive.google.com/uc?export=view&amp;id=1sgd9OocJnUeuycXLOTSfBfBPqanUm4Pd', 'Elektronik', 4.8, 231, 'Jakarta Barat'),
(35, 'Xiaomi Mi TV Stick Android', 'Xiaomi Mi TV Stick - New Original Garansi Resmi\r\n\r\nKondisi: Baru\r\n\r\nGaransi Resmi Xiaomi Indonesia 12 Bulan\r\n\r\nMi TV Stick didukung oleh Android TV 9.0 yang mendukung pencarian menggunakan suara dan Chromecast dan menghubungkan anda ke dunia konten. ikuti acara TV favorit Anda, bermain games, melihat berita atau beralih ke radio. Mi TV Stick juga merekomendasikan video berdasarkan Youtube pribadi dan preferensi Google Play Anda!\r\n\r\nRemote Bluetooth dengan Google Assistant\r\nTidak perlu lagi mengetik. Tekan tombol mic remote anda untuk secara cepat menemukan apa yang ingin Anda lihat seperti mencari acara favorit, lagu atau sekedar menanyakan cuaca\r\n\r\nSmart Cast\r\nDengan Chromecast bawaan Anda bisa cast video dan konten lain dari ponsel Anda dengan mudah\r\n\r\nTap untuk cast secara wireless\r\nCast dari iPhone iPad, perangkat Android atau laptop ke TV Anda\r\nMenerima panggilan tanpa mengganggu apa yang sedang diputar\r\nStreaming HD kecepatan tinggi\r\n\r\nPremium Surround Sound\r\nMi TV Stick mendukung audio DTS multichannel HD encoding. Suara lebih halus, dinamis, imersif dan lebih realistis dengan stereo surround sound saat memutar video ultra HD Blu/ray', 445, 549000, 'https://drive.google.com/uc?export=view&amp;id=1f2o5vL8_yFzR1_aUkI0rH3M07O6nfTx5', 'Elektronik', 4.7, 44, 'Jakarta Utara'),
(36, 'JBL Xtreme 2 - Green', 'Specifications:\r\n- Bluetooth version4.2\r\n- SupportA2DP V1.3, AVRCP V1.6, HFP V1.6, HSP V1.2\r\n- TransducerWoofer 2 x 2.75 inch\r\n- Tweeter2 x 20mm\r\n- Rated power2 x 20W RMS Bi-amp (AC mode)\r\n- Frequency response55Hz20kHz\r\n- Signal-to-noise ratio&gt;80dB\r\n- Power supply19V 3A\r\n- Battery typeLithium-ion Polymer 36Wh (Equivalent to 3.7V10000mAh)\r\n- Battery charge time3.5 hours\r\n- Music play timeup to 15 hours (varies by volume level and audio content)\r\n- USB charge out5V/2A (maximum)\r\n- Bluetooth transmitter power0-12.5dBm\r\n- Bluetooth transmitter frequency range2.402 2.480GHz\r\n- Bluetooth transmitter modulationGFSK, /4 DQPSK, 8DPSK\r\n- Dimension (H x W x D)136 x 288 x 132mm\r\n- Weight 2393g', 332, 3639000, 'https://drive.google.com/uc?export=view&amp;id=16iOO3KfmdiBE3hChzZkYVVudwA-zrPhi', 'Elektronik', 4.4, 15, 'Jakarta Utara'),
(37, 'JBL T450 - Black', 'JBL Pure suara Bass\r\nLightweight and foldable design\r\nKabel anti kusut\r\nDynamic driver 32mm\r\nFrequency response 20Hz 20kHz\r\n\r\nJBL Pure suara Bass\r\nSelama lebih dari 60 tahun, JBL telah direkayasa tepat, suara yang mengesankan ditemukan di tempat-tempat besar di seluruh dunia. Headphone ini mereproduksi suara JBL yang sama, meninju keluar bass yang baik dalam dan kuat.\r\n\r\n1-tombol remote dengan mikrofon\r\npemutaran musik kontrol dengan satu tombol remote. Mendapat panggilan masuk? Menjawabnya dengan cepat dengan mikrofon built-in.\r\n\r\nMemperkenalkan JBL T450 on-ear headphone. Di bawah tenda, sepasang driver 32mm meninju keluar bass serius kuat, mereproduksi suara JBL Murni Bass Anda alami di ruang konser, arena dan studio rekaman di seluruh dunia. Dan karena ini adalah datar lipat, ringan, nyaman dan kompak. Dengan kenyamanan bebas kusut kabel datar dilengkapi dengan remote dan mikrofon mereka pendamping sehari-hari Anda di tempat kerja, di rumah dan di jalan.\r\n\r\nGeneral Specifications\r\nPlug 3.5 mm\r\nDynamic driver 32mm\r\nFrequency response 20Hz 20kHz\r\n\r\nIsi Dalam Kemasan\r\n1 pair of T450 headphones\r\nWarning Card\r\nWarranty Card\r\n\r\nGaransi\r\n12 Bulan Resmi IMS Indonesia', 321, 599000, 'https://drive.google.com/uc?export=view&amp;id=1TdfyE7V39LMmuEIOfg4bC9vjgAWsrCqm', 'Elektronik', 4.9, 152, 'Kota Tangerang'),
(38, 'Kamera Camera CCTV BARDI', '#TC\r\n\r\nGaransi Resmi Bardi 1 Tahun\r\n\r\nIPCAM INDOOR PTZ\r\nBardi Smart Indoor PTZ Camera adalah kamera pintar yang dilengkapi oleh mode night vision + 1080P serta dapat menyalurkan video beserta suara kepada smartphone maupun suara dari smartphone. Bardi Smart Indoor PTZ Camera memiliki slot penyimpanan berupa SD Card max. 128GB (tidak termasuk) dan dapat memberi notifikasi bila ada yang lewat pada jam yang ditentukan dalam aplikasi. Pada posisi gelap, kamera akan otomatis beralih ke mode night vision. Untuk menggunakan kamera ini sangatlah mudah dan praktis, Anda hanya perlu menyambungkannya ke sumber listrik dan memposisikannya sesuai keinginan, baik itu digantung di plafon maupun dipasang pada tembok. Bardi Smart IP Camera ini juga memiliki orientasi video dalam aplikasi yang bisa diputar 360° untuk fitur pan serta tilt 60° lebih luas dan bebas dalam melakukan pengawasan. Agar kamera dapat berfungsi dengan ideal, jangan lupa men-download aplikasi dan disambungkan dengan koneksi WIFI 2.4Ghz!\r\n', 445, 379000, 'https://drive.google.com/uc?export=view&amp;id=1uGqORQ9KzE4RRSnmU3v1KNB3mM9dAQIe', 'Elektronik', 4.5, 241, 'Kota Tangerang'),
(39, 'Kamera Cctv Dummy Outdoor', 'DESKRIPSI Kamera Cctv Dummy Outdoor Waterprof Camera Palsu Fake Cctv Outdor\r\n\r\n\r\nKami hadirkan CCTV palsu dengan model terbaru untuk anda, DILENGKAPI DENGAN KABEL PALSU dengan 2pcs baterai AA mampu berkedip siang dan malam.\r\n\r\nCCTV palsu ukuran sama persis dengan cctv asli. Produk membutuhkan 2 pcs baterai AA untuk membuat lampu merah berkedip. (Harga tidak termasuk baterai)\r\n\r\nDimensi produk :\r\n* Berbahan plastik\r\n* Panjang 25cm, tinggi 13cm\r\n* Berat produk 331 gram\r\n* Berat paket 400 gram\r\n* Tidak ada FUNGSI INFRA RED, infra red hanya berfungsi sebagai hiasan. CCTV tidak memiliki tombol ON OFF akan langsung berkedip setelah anda memasukkan baterai. Untuk memasukkan baterai, BUKA TUTUP ATAS / TOPI CCTV lalu buka penutup baterainya.\r\n\r\nHarga pembelian adalah harga per 1 pcs dan harga pembelian adalah harga kosong tanpa baterai.\r\n\r\nReady stock warna SILVER (sesuai JUDUL dan FOTO)\r\n\r\n\r\nANDA DILARANG MEREQUEST WARNA HITAM DI LAPAK INI.\r\nCustomer yang merequest WARNA HITAM disini akan tetap kami KIRIM SILVER (sesuai JUDUL dan FOTO)\r\n.\r\nKami mengirim barang sesuai JUDUL dan FOTO, NO COMPLAIN, NO RETUR and NO CANCEL, terima kasih.', 241, 60000, 'https://drive.google.com/uc?export=view&amp;id=1PU0AYhf258Y_If29DQeC5-5I8kqk05-6', 'Elektronik', 4.8, 426, 'Jakarta Selatan'),
(40, 'AIR PURIFIER DAIKIN MC30VVM', 'MC30VVM-H\r\nPembersih udara dari DEBU, VIRUS dan BAKTERI.\r\nTeknologi bersih yang diakui oleh Lembaga public di Jepang &amp; luar negri.\r\n\r\n🔄​ ​Applicable Areas : 6 - 21m²\r\n📏 Dimensi Unit : 455 x 280 x 189\r\n⚖️ Berat : 5kg\r\n​🔌 ​Power : 5,5 - 16watt\r\n🇰🇷 Made in Korea\r\n\r\nKENAPA ANDA MEMERLUKAN AIR PURIFIER ?\r\nKetergantungan manusia terhadap udara bersih sangat besar, namun tidak selamanya udara yang kita hirup aman untuk kesehatan. Faktor lingkungan sangat mempengaruhi kualitas udara yang ada, bahkan udara di dalam ruangan pun tidak sebersih yang kita bayangkan. Debu, virus, bakteri sampai partikel penyebab alergi yang tidak terlihat oleh mata, tanpa kita sadari terhirup.\r\n\r\n2️⃣ LANGKAH MENGHILANGKAN ZAT BERBAHAYA\r\n✅ Hisapan yang kuat: Menarik debu di area yang luas dari 3 arah.\r\n✅ Efektif menangkap polutan: Menangkap debu dan polutan secara efektif dengan electrostatic HEPA filter.\r\n\r\n📢 Garansi RESMI parts 1 tahun.\r\n\r\n🛵 Pengiriman dengan INSTAN Kurir sebelum jam 16.30 WIB (Gosend/ Grab).\r\n🚚 Custom Logistik/ Kurir Toko (Kurir sendiri).\r\n📩 Untuk pengiriman Luar Kota/ Luar Pulau (Ongkos Kirim JNE, J&amp;T yang dibayarkan Ke Toped hanya untuk mengirim invoice).\r\n\r\n⛔ Minggu dan Tanggal Merah tidak ada Pengiriman (Store Libur).\r\n\r\n☎️ More detail, Call (021) 54397097, 5410056\r\n📲 Whatsapp 087875510326', 334, 1969000, 'https://drive.google.com/uc?export=view&amp;id=1XEKUUIqzVK_4w-LF7X-0xDP4dRcQe7ht', 'Elektronik', 4.6, 323, 'Kota Tangerang'),
(41, 'Kipas angin meja dan jepit Ouyashi', 'KIPAS ANGIN MEJA DAN JEPIT OUYASHI\r\n\r\nSpesifikasi Produk\r\nModel : OY-320J\r\nPower : 18W\r\nVoltase : 220V 50Hz\r\nBaling-baling : 4\r\nPanjang baling-baling : 10cm\r\nWarna : Biru\r\n\r\nCiri-ciri produk\r\nMotor generasi baru berprestasi tinggi memakai cincin ganda dan alat penggerak dua arah untuk menyalakan kipas angin dengan cepat dan agar berjalan dengan lancar. Plastik berintensitas tinggi adalah bahan untuk potongan plastik utama (rumah). Bagian bawah poros putar terbuat dari PBT tahan panas dengan teknologi plastik berlapis logam.\r\n\r\nRumah pada bodi utama ditempel dengan cincin pengikisan. Sehingga produk ini memiliki intensitas tinggi, tahan panas dan tidak adanya pengikisan, dsb yang berkarakteristik unggul. Blok bantalan terbuat dari plastik nilon tahan lama, yang sangat dapat memperpanjang masa pemakaian produk dan bersuara lembut.\r\n\r\nCorak penuh selera, bermacam-macam warna dan prestasi yang unggul akan memberi anda pilihan terbaik.\r\n\r\n\r\nCara Pemasangan Produk\r\n1. Masukkan baling-baling pada tempatnya, kemudian dorong sampai masuk kedalam.\r\n2. Kipas ini bisa dijepit dimeja atau ditempat lain.\r\n3. Kipas ini bisa digantung didinding dan posisinya bisa ditekuk diatur dari atas kebawah atau sebaliknya.', 566, 61750, 'https://drive.google.com/uc?export=view&amp;id=1XV9dq5X9Lm3sY2iaHj13Kk6BAXI9T21U', 'Elektronik', 4.8, 899, 'Jakarta Barat');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `idbrg` int(5) NOT NULL,
  `iduser` varchar(25) NOT NULL,
  `stok` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`idbrg`, `iduser`, `stok`) VALUES
(1, 'sulis', 1),
(6, '2001arman', 1),
(14, '2001arman', 1),
(25, '2001arman', 1),
(31, 'armanoke', 2),
(36, 'armanoke', 1);

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
('2001arman', 'Muhammad Arman Maulana', 'Jalan Trisari Kota Samarinda', '082123984231', '2001arman', '2001arman'),
('arman123', 'Arman Maulana Ganteng', 'Jalan Trisari', '082129355094', 'arman123', 'arman123'),
('arman4', 'arman maulana', 'jalan trisari', '082129355094', 'arman4', 'arman4'),
('armanoke', 'Muhammad Arman Maulana', 'Jalan Trisari Kota Samarindaaaaa', '0821293550949898', 'armanoke', 'armanoke'),
('sulis', 'Sulistyorini', 'Kota Samarinda', '082123984231', 'sulis', 'sulis');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `id_barang` int(10) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `tanggal` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `username`, `id_barang`, `jumlah`, `tanggal`) VALUES
(1, 'sulis', 4, 2, '0000-00-00'),
(2, 'sulis', 5, 2, '0000-00-00'),
(3, 'sulis', 23, 1, '0000-00-00'),
(4, 'sulis', 24, 1, '0000-00-00'),
(5, 'sulis', 26, 3, '0000-00-00'),
(6, 'sulis', 2, 1, '28-11-2021'),
(7, 'sulis', 23, 1, '28-11-2021'),
(8, 'sulis', 4, 1, '28-11-2021'),
(9, 'sulis', 5, 1, '28-11-2021'),
(10, 'sulis', 7, 1, '28-11-2021'),
(11, 'sulis', 15, 1, '28-11-2021'),
(12, 'sulis', 15, 1, '28-11-2021'),
(13, 'sulis', 17, 1, '28-11-2021'),
(14, 'sulis', 1, 1, '28-11-2021'),
(15, 'sulis', 40, 1, '28-11-2021'),
(16, 'sulis', 4, 1, '29-11-2021'),
(17, 'sulis', 24, 1, '29-11-2021'),
(18, 'sulis', 28, 1, '29-11-2021'),
(19, 'arman123', 9, 3, '29-11-2021'),
(20, 'arman123', 4, 1, '30-11-2021'),
(21, 'arman123', 5, 1, '30-11-2021'),
(22, 'arman123', 5, 2, '01-12-2021'),
(23, 'arman123', 4, 1, '01-12-2021'),
(24, 'arman123', 4, 1, '01-12-2021'),
(25, 'arman123', 2, 1, '01-12-2021'),
(26, 'arman123', 2, 3, '01-12-2021'),
(27, 'sulis', 5, 1, '01-12-2021');

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
(6, 'arman4', '$2y$10$tz8yTfZ26UGCbpeKa0oYQ.nplEqgUUVKx1hpGJFuvcASzASF0gMHi'),
(7, 'sulis', '$2y$10$dLwXrADw7IYJ4b0R/jO.JuQy5Roko7rQNH9VJEX.DX7CRzBd1Y6cK'),
(8, '2001arman', '$2y$10$jd5gwd./7j3LzQVejyaQOOy0MJpVUEl0d2vgvKFGBYbCAm2n8droW'),
(9, 'armanoke', '$2y$10$vvnFQACx4yHeIf/QorWwb.3kKaB9Th2StMJjr8.imwD8izTOoO2u2'),
(10, 'arman123', '$2y$10$zDiU9ABYXyrneich4/1VR.31Z5HYFFtEfWAadrPw5cdkTQT7jiWE6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`idbrg`);

--
-- Indexes for table `details_user`
--
ALTER TABLE `details_user`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
