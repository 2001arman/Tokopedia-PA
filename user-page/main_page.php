<?php
  require '../adminpg/conn.php';
  session_start();
  if(!isset($_SESSION['login'])){
    header("Location: ../login.php");
    exit;
  }

  $semuaBarang = query("SELECT * FROM barang");
  $dataCelana = query("SELECT * FROM barang WHERE kategori = 'celana'");
  $dataSepatu = query("SELECT * FROM barang WHERE kategori = 'sepatu'");
  $dataBaju = query("SELECT * FROM barang WHERE kategori = 'baju'");
  $dataElektronik = query("SELECT * FROM barang WHERE kategori = 'elektronik'");

?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="../css/main-page.css" />
    <!-- fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
    <title>Tokopedia</title>
  </head>
  <body>
    
    <!-- navbar -->
    <?php include('navbar.php'); ?>
    <!-- akhir navbar -->

    <!-- konten celana-->
    <div class="margin"></div>
    <div class="container-konten">
      <div class="judul-section">
        <h2>Celana Pilihan</h2>
        <a href="">Lihat Semua</a>
      </div>
      <div class="barang-section">
        <?php foreach ($dataCelana as $data) : ?>
        <div class="card-barang" onclick="detailsPage(<?= $data['id'] ?>)">
          <img src="<?= $data['gambar'] ?>" alt="<?= $data['nama'] ?>" class="image-card">
          <div class="keterangan">
            <div class="container-nama">
              <p class="nama-barang"><?= $data['nama']?></p>
            </div>
            <p class="harga">Rp. <?= number_format($data['harga'], '0', '.', '.')?></p>
            <div class="lokasi">
              <img src="../images/icon_checked.png" alt="checked" class="icon">
              <span class="detail-barang"><?= $data['lokasi'] ?></span>
            </div>
            <div class="detail-rating">
              <img src="../images/icon_star.png" alt="star" class="icon">
              <span class="detail-barang"><?= $data['rating'] ?> | Terjual <?= $data['terjual'] ?></span>
            </div>
          </div>
        </div>
        <?php endforeach; ?>
      </div>
    </div>
    <!-- akhir konten celana-->

    <!-- konten trending -->
    <div class="container-trending">
      <div class="judul-section">
        <h2>Lagi Trending, Nih</h2>
        <div class="refresh-trending">
          <img src="../images/icon_refresh.png" alt="star" class="icon-judul">
          <a href="">Muat Lainnya</a>
        </div>
      </div>
      <div class="barang-section">
        <div class="card-trending">
          <img src="<?= $dataCelana[2]['gambar']?>" alt="celana" class="image-trending">
          <div class="keterangan">
            <p class="nama"><?= $dataCelana[2]['nama'] ?></p>
            <span class="jumlah"><?= $dataCelana[2]['stok'] ?> Produk</span>
          </div>
        </div>
        <div class="card-trending">
          <img src="<?= $dataSepatu[7]['gambar']?>" alt="Sepatu" class="image-trending">
          <div class="keterangan">
            <p class="nama"><?= $dataSepatu[7]['nama'] ?></p>
            <span class="jumlah"><?= $dataSepatu[7]['stok'] ?> Produk</span>
          </div>
        </div>
        <div class="card-trending">
          <img src="<?= $dataBaju[1]['gambar']?>" alt="Baju" class="image-trending">
          <div class="keterangan">
            <p class="nama"><?= $dataBaju[1]['nama'] ?></p>
            <span class="jumlah"><?= $dataBaju[1]['stok']?> Produk</span>
          </div>
        </div>
        <div class="card-trending">
          <img src="<?= $dataElektronik[4]['gambar']?>" alt="Elektronik" class="image-trending">
          <div class="keterangan">
            <p class="nama"><?= $dataElektronik[4]['nama'] ?></p>
            <span class="jumlah"><?= $dataElektronik[4]['stok'] ?> Produk</span>
          </div>
        </div>
      </div>
    </div>
    <!-- akhir trending -->

    <!-- konten baju-->
    <div class="container-konten">
      <div class="judul-section">
        <h2>Baju Pilihan</h2>
        <a href="">Lihat Semua</a>
      </div>
      <div class="barang-section">
        <?php foreach ($dataBaju as $data) : ?>
        <div class="card-barang" onclick="detailsPage(<?= $data['id'] ?>)">
          <img src="<?= $data['gambar'] ?>" alt="<?= $data['nama'] ?>" class="image-card">
          <div class="keterangan">
            <div class="container-nama">
              <p class="nama-barang"><?= $data['nama']?></p>
            </div>
            <p class="harga">Rp. <?= number_format($data['harga'], '0', '.', '.')?></p>
            <div class="lokasi">
              <img src="../images/icon_checked.png" alt="checked" class="icon">
              <span class="detail-barang"><?= $data['lokasi'] ?></span>
            </div>
            <div class="detail-rating">
              <img src="../images/icon_star.png" alt="star" class="icon">
              <span class="detail-barang"><?= $data['rating'] ?> | Terjual <?= $data['terjual'] ?></span>
            </div>
          </div>
        </div>
        <?php endforeach; ?>
      </div>
    </div>
    <!-- akhir konten baju-->

    <!-- promo brand erigo -->
    <div class="container-konten">
      <div class="judul-section">
        <h2>Promo Brand Pilihan</h2>
      </div>
      <img src="https://images.tokopedia.net/img/WVCyGU/2021/11/11/9ba16f2a-71d5-49e1-a7c4-9f7901e2a724.jpg" alt="jumbotron" class="jumbotron">
    </div>
    <!-- akhir konten erigo-->

    <!-- konten sepatu-->
    <div class="container-konten">
      <div class="judul-section">
        <h2>Sepatu Pilihan</h2>
        <a href="">Lihat Semua</a>
      </div>
      <div class="barang-section">
        <?php foreach ($dataSepatu as $data) : ?>
        <div class="card-barang" onclick="detailsPage(<?= $data['id'] ?>)">
          <img src="<?= $data['gambar'] ?>" alt="<?= $data['nama'] ?>" class="image-card">
          <div class="keterangan">
            <div class="container-nama">
              <p class="nama-barang"><?= $data['nama']?></p>
            </div>
            <p class="harga">Rp. <?= number_format($data['harga'], '0', '.', '.')?></p>
            <div class="lokasi">
              <img src="../images/icon_checked.png" alt="checked" class="icon">
              <span class="detail-barang"><?= $data['lokasi'] ?></span>
            </div>
            <div class="detail-rating">
              <img src="../images/icon_star.png" alt="star" class="icon">
              <span class="detail-barang"><?= $data['rating']?> | Terjual <?= $data['terjual']?></span>
            </div>
          </div>
        </div>
        <?php endforeach; ?>
      </div>
    </div>
    <!-- akhir konten sepatu-->

    <!-- promo brand hemaviton -->
    <div class="container-konten">
      <div class="judul-section">
        <h2>Promo Brand Pilihan</h2>
      </div>
      <img src="https://images.tokopedia.net/img/WVCyGU/2021/10/4/afc3489e-33b6-4bbb-a764-ce33a9ad5b3d.jpg" alt="jumbotron" class="jumbotron">
    </div>
    <!-- akhir konten hemaviton-->

    <!-- konten elektronik-->
    <div class="container-konten">
      <div class="judul-section">
        <h2>Elektronik Pilihan</h2>
        <a href="">Lihat Semua</a>
      </div>
      <div class="barang-section">
        <?php foreach ($dataElektronik as $data) : ?>
        <div class="card-barang" onclick="detailsPage(<?= $data['id'] ?>)">
          <img src="<?= $data['gambar'] ?>" alt="<?= $data['nama'] ?>" class="image-card">
          <div class="keterangan">
            <div class="container-nama">
              <p class="nama-barang"><?= $data['nama']?></p>
            </div>
            <p class="harga">Rp. <?= number_format($data['harga'], '0', '.', '.')?></p>
            <div class="lokasi">
              <img src="../images/icon_checked.png" alt="checked" class="icon">
              <span class="detail-barang"><?= $data['lokasi']?></span>
            </div>
            <div class="detail-rating">
              <img src="../images/icon_star.png" alt="star" class="icon">
              <span class="detail-barang"><?= $data['rating']?> | Terjual <?= $data['terjual']?></span>
            </div>
          </div>
        </div>
        <?php endforeach; ?>
      </div>
    </div>
    <!-- akhir konten elektronik-->

    <!-- konten semua barang-->
    <div class="container-konten">
      <div class="judul-section">
        <h2>Semua Barang</h2>
        <a href="">Lihat Semua</a>
      </div>
      <div class="semua-barang-section">
      <?php foreach ($semuaBarang as $data) : ?>
        <div class="card-barang" onclick="detailsPage(<?= $data['id'] ?>)">
          <img src="<?= $data['gambar'] ?>" alt="<?= $data['nama'] ?>" class="image-card">
          <div class="keterangan">
            <div class="container-nama">
              <p class="nama-barang"><?= $data['nama']?></p>
            </div>
            <p class="harga">Rp. <?=number_format($data['harga'], '0', '.', '.')?></p>
            <div class="lokasi">
              <img src="../images/icon_checked.png" alt="checked" class="icon">
              <span class="detail-barang"><?= $data['lokasi'] ?></span>
            </div>
            <div class="detail-rating">
              <img src="../images/icon_star.png" alt="star" class="icon">
              <span class="detail-barang"><?= $data['rating'] ?> | Terjual <?= $data['terjual'] ?></span>
            </div>
          </div>
        </div>
        <?php endforeach; ?>
      </div>
    </div>
    <!-- akhir konten semua barang-->
  </body>
  <script>
    function detailsPage(id) {
      document.location.href = "detail.php?id="+id;
    }
  </script>
</html>
