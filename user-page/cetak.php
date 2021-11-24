<?php
require '../koneksi.php';

$id = 1;

$select_sql = "SELECT * FROM tes WHERE id = $id";
$result = mysqli_query($conn, $select_sql);

$tes = [];

while ($row = mysqli_fetch_assoc($result)) {
    $tes[] = $row;
}
$tes = $tes[0];


?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="checkout.css">
    <title>tokopedia-pdf</title>
</head>
<body>
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
            <?php  echo date("j F Y, G:i");?></p>
            <hr>
            <p> PENJUAL</p>
            <?= $tes['supplier']; ?><br><br>
            <p> PEMBELI </p>
            <?= $tes['nama'],' (Rumah)'; ?><br>
            <?= $tes['nohp']; ?><br>
            <?= $tes['alamat']; ?><br><br>
            <hr>
            <p>Barang <span class="price" style="color:black"><?= $tes['barang']; ?></p>
            <p>Total Belanja</p>   
            <p>Ongkos Kirim</p>   
            <p>Sistem Pembayaran <span class="price" style="color:black"><b>COD</b></span></p>  
            <hr> 
              <p>Total Pembayaran <span class="price" style="color:black"><b>Rp.30.0000</b></span></p>      
          </div>
        </div>
      </form>
    </div>
</div>
<script >
    window.print();
</script>
</body>
</html>