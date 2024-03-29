<?php
  require '../adminpg/conn.php';

  session_start();
  if(!isset($_SESSION['login'])){
    header("Location: ../login.php");
    exit;
  }
  
  $list_barang = $_SESSION['list'];
  $id_barang = $list_barang[0];
  $username = $_SESSION['user'];
  $user = query("SELECT * FROM details_user WHERE username='$username'");
  $user = $user[0];

  $total_pesanan = 0;
  $total_harga = 0;

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/checkout.css">
    <link rel="shortcut icon" href="https://ecs7.tokopedia.net/favicon/favicon-notif.ico" type="image/x-icon">
    <title>Checkout</title>
</head>
<body>
<div class="row">
  <div class="col-75">
    <div class="container">
        <div class="row">
          <div class="col-50">
            <h2>Checkout</h2>
            <h3>Alamat Pengiriman</h3>
            <form action="cetak.php"method="post">
              <hr>
              <?= $user['nama'],' (Rumah)'; ?><br>
              <?= $user['no_hp']; ?><br>
              <?= $user['alamat']; ?><br><br>

              <h4>Barang </h4>
              <?php foreach ($id_barang as $id) : ?>
              <div class="barang-section">  
                <?php
                  $barang = [];
                  $barang = query("SELECT * FROM barang WHERE id ='$id'");
                  $barang = $barang[0];
                  
                  $cart = [];
                  $cart = query("SELECT * FROM cart WHERE idbrg ='$id'");
                  $cart = $cart[0];

                  $total_pesanan = $total_pesanan + $cart['stok'];
                  $harga_barang = $barang['harga'] * $cart['stok'];
                  $total_harga = $total_harga + $harga_barang;
                  $_SESSION['total_harga'] = $total_harga;
                  ?>
                  <div class="detail-barang">
                    <p class="judul-barang"><?= $barang['nama']; ?></p>
                    <p>Harga: Rp.<?= number_format($barang['harga'], '0', '.', '.'); ?></p>
                    <p>Jumlah Pesanan: <?= $cart['stok'] ?> barang</p>
                  </div>
                <img src="<?= $barang['gambar'] ?>" alt="<?= $barang['nama'] ?>" class="image-card">
              </div>
              <?php endforeach; ?>
                <br><br>
              <h4>Total Barang Dipesan</h4>    
              <h4><?= $total_pesanan ?> produk</h4>
                 
              <hr>
                <p>Total Tagihan <span class="price" style="color:black"><b>Rp. <?= number_format($total_harga, '0', '.', '.');?></b></span></p> 
              <button type="submit" name="submit" class="btn">Checkout</button> 
            </form>   
            <button type="button" class="btn" ><a href="cart.php"style="color:#f1f1f1">Cancel</a></button>
  </div>
</div>
<script src="jquery-3.6.0.min.js"></script>
<script src="script.js"></script>
</body>
</html>