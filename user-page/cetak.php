<?php
  require '../adminpg/conn.php';

  session_start();
  $username = $_SESSION['user'];
  $list_barang = $_SESSION['list'];
  $id_barang = $list_barang[0];

  $user = query("SELECT * FROM details_user WHERE username='$username'");
  $user = $user[0];

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="checkout.css">
    <link rel="stylesheet" href="../css/checkout.css">
    <link rel="shortcut icon" href="https://ecs7.tokopedia.net/favicon/favicon-notif.ico" type="image/x-icon">
    <title>tokopedia-pdf</title>
</head>
<body>

<?php include('navbar.php')  ?>

<div class="batas"></div>
<div class="row">
  <div class="col-75">
    <div class="container">
        <div class="row">
          <div class="col-50">
            <h2>Checkout</h2>
            <h3>Nomor Resi <?= (mt_rand() . "<br>"); ?></h3>
            <form action=""method="post">
            <hr>
            <input type="hidden"name="id" value="<?= $tes["id"]; ?>">
            <p>Tanggal Pengiriman</p>
            <?php  echo date("j F Y");?></p>
            <hr>
            <p> PEMBELI </p>
            <?= $user['nama'],' (Rumah)'; ?><br>
            <?= $user['no_hp']; ?><br>
            <?= $user['alamat']; ?><br><br>
            <hr>
            <p>Barang <span class="price" style="color:black"></p>
            <?php foreach ($id_barang as $id) : ?>
              <div class="barang-section">  
                <?php
                  $barang = [];
                  $barang = query("SELECT * FROM barang WHERE id ='$id'");
                  $barang = $barang[0];
                  
                  $cart = [];
                  $cart = query("SELECT * FROM cart WHERE idbrg ='$id'");
                  $cart = $cart[0];
                  ?>
                  <div class="detail-barang">
                    <p class="judul-barang"><?= $barang['nama']; ?></p>
                    <p>Harga: Rp.<?= number_format($barang['harga'], '0', '.', '.'); ?></p>
                    <p>Jumlah Pesanan: <?= $cart['stok'] ?> barang</p>
                  </div>
                <img src="<?= $barang['gambar'] ?>" alt="<?= $barang['nama'] ?>" class="image-card">
              </div>
              <?php endforeach; ?>
            <p>Sistem Pembayaran <span class="price" style="color:black"><b>COD</b></span></p>  
            <hr> 
              <p>Total Pembayaran <span class="price" style="color:black"><b>Rp.<?= number_format($_SESSION['total_harga'], '0', '.', '.');?></b></span></p>      
          </div>
        </div>
      </form>
    </div>
</div>
<?php 
foreach ($id_barang as $id) {
  $cart = [];
  $cart = query("SELECT * FROM cart WHERE idbrg ='$id'");
  $cart = $cart[0];
  $barang = [];
  $barang = query("SELECT * FROM barang WHERE id ='$id'");
  $barang = $barang[0];
  $stok = $cart['stok'];
  $barang_terjual = $barang['terjual'] + $stok;
  $barang_stok = $barang['stok'] - $stok;
  $tanggal = date("d-m-Y");
  $conn->query("UPDATE barang SET stok='$barang_stok', terjual='$barang_terjual' WHERE id = '$id'");
  $conn->query("INSERT INTO transaksi (username,id_barang,jumlah,tanggal) VALUES ('$username','$id','$stok','$tanggal')");
  $conn->query("DELETE FROM cart WHERE idbrg='$id'");
}
$_SESSION['list'] = 0; 
$_SESSION['total_harga'] = 0;
?>
<script >
    window.print();
</script>
</body>
</html>