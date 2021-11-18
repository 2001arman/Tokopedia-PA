<?php
  require 'koneksi.php';

  $read_sql = "SELECT * FROM tes";
  $result = mysqli_query($conn, $read_sql);

  $tes = [];

  while($row = mysqli_fetch_assoc($result)){
      $tes[] = $row;
  }

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PageCheckout</title>
</head>
<body>
<h1>Contoh Database yang di ambil untuk checkout</h1>
    <table class="container" border=1 cellspacing=2 cellpadding=10>
        <tr>
            <th>No</th>
            <th>Nama</th>
            <th>No.hp</th>
            <th>Email</th>
            <th>Supplier</th>
            <th>Nama Barang</th>
            <th>Action</th>
        </tr>
        <?php $i = 1; ?>
        <?php foreach($tes as $t): ?>
        <tr>
            <td><?= $i; ?></td>
            <td><?= $t["nama"]; ?></td>
            <td><?= $t["nohp"]; ?></td>
            <td><?= $t["alamat"]; ?></td>
            <td><?= $t["supplier"]; ?></td>
            <td><?= $t["barang"]; ?></td>
            <td>
                <a href="checkout.php?id=<?= $t["id"]; ?>"><button>Checkout</button></a>
                <a href="cetak.php?id=<?= $t["id"]; ?>"><button>Print</button></a>

            </td>
        </tr>
        <?php $i++; ?>
        <?php endforeach; ?>
    </table>

    
</body>
</html>