<?php 
	require '../adminpg/conn.php';
	session_start();

  if(!isset($_SESSION['login'])){
    header("Location: ../login.php");
    exit;
  }

	$nama = $_SESSION['user'];
	$result = query("SELECT * FROM transaksi WHERE username='$nama'"); //DISINI JANGAN LUPA UBAH NAMA TABEL DAN VARIABEL YANG DITARIK
	// var_dump($result);
 ?>


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="../css/main-page.css" />
    <link rel="stylesheet" href="../css/transaksi.css" />
    <!-- fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;500;600;700;800&display=swap"
      rel="stylesheet"
    />
    <title>Profile</title>
  </head>
  <body>
    <!-- navbar -->
    <?php include('navbar.php') ?>
      <!-- akhir navbar -->

    <!-- konten -->
    <div class="container">
      <div class="judul">
        <h2>Daftar Transaksi</h2>
      </div>
      <?php foreach($result as $data): ?>
        <?php
          $id_barang = $data['id_barang'];
          $barang = [];
          $barang = query("SELECT * FROM barang WHERE id ='$id_barang'");
          $barang = $barang[0];

          $total_harga = $barang['harga'] * $data['jumlah'];
        ?>
        <div class="konten">
            <div class="card-transaksi">
                <img src="<?= $barang['gambar'] ?>" alt="" class="image-card">
                <div class="detail-barang">
                    <p class="nama-barang"><?= $barang['nama']; ?></p>
                    <p class="harga"><?= $data['jumlah'] ?> barang x Rp. <?=number_format($barang['harga'], '0', '.', '.') ?></p>
                </div>
                <div class="pemisah"></div>
                <div class="total-harga">
                    <p class="harga">Total Belanja</p>
                    <p class="total">Rp. <?= number_format($total_harga, '0', '.', '.') ?></p>
                </div>
            </div>
            <div class="pilihan">
                <a href="detail.php?id=<?=$id_barang ?>">Beli Lagi</a>
            </div>
          </div>
          <?php endforeach; ?>
      </div>
    </div>
    <!-- akhir konten -->
</body>
</html>
