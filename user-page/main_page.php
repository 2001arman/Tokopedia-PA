<?php

  require '../adminpg/conn.php';
  include('navbar.html');

  $semuaBarang = query("SELECT * FROM barang");
  $dataCelana = query("SELECT * FROM barang WHERE kategori = 'celana'");
  $dataSepatu = query("SELECT * FROM barang WHERE kategori = 'sepatu'");
//     if (isset($_POST["cari"])) {
//         $by = ($_POST['by']);
//         $result = search($_POST['search'], $by);
//     }
// if (isset($_POST["sort"])) {
//     $sortto=($_POST["sortto"]);
//     $sortkey=($_POST["sortby"]);
//         $result= query("SELECT * FROM barang ORDER BY $sortkey $sortto ");
// }

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
    

    <!-- konten -->
    <div class="margin"></div>
    <div class="container-konten">
      <div class="judul-section">
        <h2>Celana Pilihan</h2>
        <a href="">Lihat Semua</a>
      </div>
      <div class="barang-section">
        <?php foreach ($dataCelana as $data) : ?>
        <div class="card-barang">
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
    <!-- akhir konten -->

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
          <img src="https://images.tokopedia.net/img/cache/200-square/VqbcmM/2021/5/7/6321290f-7a3a-4ad5-8924-fec5fe374ebe.jpg.webp?ect=4g" alt="" class="image-trending">
          <div class="keterangan">
            <p class="nama">Rtx 3080</p>
            <span class="jumlah">4rb Produk</span>
          </div>
        </div>
        <div class="card-trending"></div>
        <div class="card-trending"></div>
        <div class="card-trending"></div>
        <div class="card-trending"></div>
        <div class="card-trending"></div>
        <div class="card-trending"></div>
        <div class="card-trending"></div>
      </div>
    </div>
    <!-- akhir trending -->

    <div class="container-konten">
      <div class="judul-section">
        <h2>Promo Brand Pilihan</h2>
      </div>
      <img src="https://images.tokopedia.net/img/WVCyGU/2021/11/11/9ba16f2a-71d5-49e1-a7c4-9f7901e2a724.jpg" alt="jumbotron" class="jumbotron">
    </div>
    <!-- akhir konten -->

    <!-- konten -->
    <div class="margin"></div>
    <div class="container-konten">
      <div class="judul-section">
        <h2>Sepatu Pilihan</h2>
        <a href="">Lihat Semua</a>
      </div>
      <div class="barang-section">
        <?php foreach ($dataSepatu as $data) : ?>
        <div class="card-barang">
          <img src="<?= $data['gambar'] ?>" alt="<?= $data['nama'] ?>" class="image-card">
          <div class="keterangan">
            <div class="container-nama">
              <p class="nama-barang"><?= $data['nama']?></p>
            </div>
            <p class="harga">Rp. <?= number_format($data['harga'], '0', '.', '.')?></p>
            <div class="lokasi">
              <img src="../images/icon_checked.png" alt="checked" class="icon">
              <span class="detail-barang">Kota Samarinda</span>
            </div>
            <div class="detail-rating">
              <img src="../images/icon_star.png" alt="star" class="icon">
              <span class="detail-barang">4.9 | Terjual 2.2 rb</span>
            </div>
          </div>
        </div>
        <?php endforeach; ?>
      </div>
    </div>
    <!-- akhir konten -->

    <!-- konten -->
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
              <span class="detail-barang">Kota Samarinda</span>
            </div>
            <div class="detail-rating">
              <img src="../images/icon_star.png" alt="star" class="icon">
              <span class="detail-barang">4.9 | Terjual 2.2 rb</span>
            </div>
          </div>
        </div>
        <?php endforeach; ?>
      </div>
    </div>
    <!-- akhir konten -->
  </body>
  <script>
    function detailsPage(id) {
      document.location.href = "detail.php?id="+id;
    }
  </script>
</html>
