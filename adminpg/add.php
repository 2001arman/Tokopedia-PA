<?php
require 'conn.php';

session_start();
  if(!isset($_SESSION['admin'])){
    header("Location: ../login.php");
    exit;
  }

if (isset($_POST["submit"])) {
    $nama = htmlspecialchars($_POST['name']);
    $desc = htmlspecialchars($_POST['desc']);
    $stok = htmlspecialchars($_POST['stok']);
    $harga = htmlspecialchars($_POST['harga']);
    $gambar = htmlspecialchars($_POST['gambar']);
    $kategori = htmlspecialchars($_POST['kategori']);
    $rating = htmlspecialchars($_POST['rating']);
    $terjual = htmlspecialchars($_POST['terjual']);
    $lokasi = htmlspecialchars($_POST['lokasi']);
    $conn->query("INSERT INTO barang (nama, deskripsi, stok, harga, gambar, kategori, rating, terjual, lokasi) VALUES ('$nama','$desc','$stok','$harga','$gambar','$kategori','$rating','$terjual','$lokasi')");
    
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
    <style type="text/css">
        td{
            border: 0;
            padding: 5px 10px;
        }
    </style>
    <title>Tambah Data</title>
</head>
<body>
    
    <form action="#" method="POST">
    <div id="wrap">
    <table id="inputan">
    <tr>
    <td><label for="name">Nama :</label></td>
    <td><input type="text" name="name" ></td>
    </tr>

    <tr>
    <td><label for="desc">Deskripsi :</label></td>
    <td><textarea name="desc" rows="10" cols="100"></textarea></td>
    </tr>
    
    <tr>
    <td><label for="stok">Stok :</label></td>
    <td><input type="number" name="stok" ></td>
    </tr>

    <tr>
    <td><label for="harga">Harga :</label></td>
    <td><input type="number" name="harga" ></td>
    </tr>

    <tr>
    <td><label for="gambar">File Gambar :</label></td>
    <td><input type="text" name="gambar" ></td>
    </tr>

    <tr>
    <td><label for="kategori">Kategori:</label></td>
      <td><select name='kategori'>
        <option value='Sepatu'>Sepatu</option>
        <option value='Baju'>Baju</option>
        <option value='Celana'>Celana</option>
        <option value='Elektronik'>Elektronik</option>
      </select></td>
    </tr>

    <tr>
    <td><label for="rating">Rating :</label></td>
    <td><input type="number" name="rating" step="0.1" min="0.1" max="5"></td>
    </tr>

    <tr>
    <td><label for="terjual">Terjual :</label></td>
    <td><input type="number" name="terjual" ></td>
    </tr>

    <tr>
    <td><label for="lokasi">Lokasi :</label></td>
    <td><input type="text" name="lokasi" ></td>
    </tr>
    </table>
    </div>
    </div>
      <button type="submit" class="btn4" style="margin-bottom: 8px;" name="submit">Submit</button>
      <a href="index.php"><button class="btn1" style="display: block; margin: auto;">Kembali</button></a>
    </form>
    
</body>
</html>