<?php
require 'conn.php';

if (isset($_POST["submit"])) {
    $nama = htmlspecialchars($_POST['name']);
    $desc = htmlspecialchars($_POST['desc']);
    $stok = htmlspecialchars($_POST['stok']);
    $harga = htmlspecialchars($_POST['harga']);
    $gambar = htmlspecialchars($_POST['gambar']);
    $kategori = htmlspecialchars($_POST['kategori']);
    $conn->query("INSERT INTO barang VALUES ('', '$nama','$desc','$stok','$harga','$gambar', '$kategori')");
    
    if ($conn) {
        echo "<script>
            alert('Data berhasil ditambahkan!');
            document.location.href = 'index.php';
        </script>";
    } else {
        echo "<script>
            alert('Data gagal ditambahkan!');
            document.location.href = 'create.php';
        </script>";
    }
}
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="style.css" />
    <title>Tambah Data</title>
</head>
<body>
    <div id="wrapper">
    <form action="#" method="POST">
    <div class="inputan">
    <label for="name">Nama :</label>
    <input type="text" name="name" ><br>

    <label for="desc">Deskripsi :</label>
    <input type="text" name="desc" ><br>

    <label for="stok">Stok :</label>
    <input type="text" name="stok" ><br>

    <label for="harga">Harga :</label>
    <input type="number" name="harga" ><br>

    <p>
    <label for="gambar">File Gambar :</label>
    <input type="text" name="gambar" >Masukkan URL Gambar</p><br>

    <p>Kategori:
      <select name='kategori'>
        <option value='Sepatu'>Sepatu</option>
        <option value='Baju'>Baju</option>
        <option value='Celana'>Celana</option>
      </select>
      </p>
      <button type="submit" class="btn3" name="submit">Submit</button>
      <button class="btn1"><a href="index.php">Kembali</a></button>
    </div>
    </form>
    </div>
</body>
</html>