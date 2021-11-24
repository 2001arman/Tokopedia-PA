<?php
require '../koneksi.php';
// $id = $_GET["id"];
$id = 1;

$select_sql = "SELECT * FROM tes WHERE id = $id";
$result = mysqli_query($conn, $select_sql);

$tes = [];

while ($row = mysqli_fetch_assoc($result)) {
    $tes[] = $row;
}
$tes = $tes[0];

if (isset($_POST["submit"])) {
  $alamat = htmlspecialchars($_POST["alamat"]);

  $update_sql = "UPDATE tes SET alamat='$alamat' WHERE id = '$id'";
  $result = mysqli_query($conn, $update_sql);

  if ($result) {
      echo "<script>
          alert('Data berhasil dicheckout!');
          document.location.href = 'index.php';
      </script>";
  } else {
      echo "<script>
          alert('Data gagal dicheckout!');
          document.location.href = 'cetak.php';
      </script>";
  }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="checkout.css">
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
            <form action=""method="post">
              <hr>
              <input type="hidden"name="id" value="<?= $tes["id"]; ?>">
              <?= $tes['nama'],' (Rumah)'; ?><br>
              <?= $tes['nohp']; ?><br>
              <?= $tes['alamat']; ?><br><br>

              <input type="checkbox" onclick="myFunction()"id="cek" >Pilih Alamat Lain
              <label for="alamat"></label><br>
              <input type="text" name ="alamat" id="alamat"value="<?= $tes['alamat']; ?>"><br><br>

              <h4>Supplier </h4><?= $tes['supplier']; ?><br><br>
              <h4>Barang </h4><?= $tes['barang']; ?><br><br>
              <h4>Jumlah</h4>    
              <h4>Harga(1 produk)</h4>
                 
              <hr>
                <p>Total Tagihan <span class="price" style="color:black"><b>Rp.30.0000</b></span></p> 
              <button type="submit" name="submit" class="btn">Checkout</button> 
            </form>   
            <button type="button" class="btn" ><a href="index.php"style="color:#f1f1f1">Cancel</a></button>
  </div>
</div>
<script src="jquery-3.6.0.min.js"></script>
<script src="script.js"></script>
</body>
</html>