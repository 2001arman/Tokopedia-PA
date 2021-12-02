<?php
require 'conn.php';

session_start();
  if(!isset($_SESSION['login'])){
    header("Location: ../login.php");
    exit;
  }

$id = $_GET["id"];
$result = query("SELECT * FROM barang WHERE id='$id'");
$result = $result[0];

if (isset($_POST["submit"])) {
    $id = $result['id'];
    $nama = htmlspecialchars($_POST['name']);
    $desc = htmlspecialchars($_POST['desc']);
    $stok = htmlspecialchars($_POST['stok']);
    $harga = htmlspecialchars($_POST['harga']);
    $gambar = htmlspecialchars($_POST['gambar']);
    $kategori = htmlspecialchars($_POST['kategori']);
    $rating = htmlspecialchars($_POST['rating']);
    $terjual = htmlspecialchars($_POST['terjual']);
    $lokasi = htmlspecialchars($_POST['lokasi']);
    $conn->query("UPDATE barang SET 
        nama='$nama', 
        deskripsi='$desc',
        stok='$stok', 
        harga='$harga', 
        gambar='$gambar', 
        kategori='$kategori',
        rating='$rating', 
        terjual='$terjual',
        lokasi='$lokasi' 
        WHERE id='$id'");
    
    if ($conn) {
        echo "<script>
            alert('Data berhasil diupdate!');
            document.location.href = 'index.php';
        </script>";
    } else {
        echo "<script>
            alert('Data gagal diupdate!');
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
    <title>Edit Data</title>
</head>
<body>
    <div id="wrap">
    <form action="#" method="POST">
    <table>
    <tr>
    <td><label for="name">Nama :</label></td>
    <td><input type="text" name="name" value="<?= $result["nama"]; ?>"></td>
    </tr>
    
    <tr>
    <td><label for="desc">Deskripsi :</label></td>
    <td><textarea name="desc" rows="10" cols="100"><?= $result["deskripsi"]; ?></textarea></td>
    </tr>

    <tr>
    <td><label for="stok">Stok :</label></td>
    <td><input type="number" name="stok" value="<?= $result["stok"]; ?>"></td>
    </tr>

    <tr>
    <td><label for="harga">Harga :</label></td>
    <td><input type="number" name="harga" value="<?= $result["harga"]; ?>"></td>
    </tr>

    <tr>
    <td><label for="gambar">File Gambar :</label></td>
    <td><input type="text" name="gambar" value="<?= $result["gambar"]; ?>"></td>
    </tr>

    <tr>
    <td><label for="kategori">Kategori :</label></td>
      <td><select name='kategori'>
        <option <?= $result['kategori'] == "Sepatu" ? "selected" : "" ?> value='Sepatu'>Sepatu</option>
        <option <?= $result['kategori'] == "Baju" ? "selected" : "" ?> value='Baju'>Baju</option>
        <option <?= $result['kategori'] == "Celana" ? "selected" : "" ?> value='Celana'>Celana</option>
        <option <?= $result['kategori'] == "Elektronik" ? "selected" : "" ?> value='Elektronik'>Elektronik</option>
      </select></td>
    </tr>

    <tr>
    <td><label for="rating">Rating :</label></td>
    <td><input type="number" name="rating" value="<?= $result["rating"]; ?>" step="0.1" min="0.1" max="5"></td>
    </tr>

    <tr>
    <td><label for="terjual">Terjual :</label></td>
    <td><input type="number" name="terjual" value="<?= $result["terjual"]; ?>"></td>
    </tr>

    <tr>
    <td><label for="lokasi">Lokasi :</label></td>
    <td><input type="text" name="lokasi" value="<?= $result["lokasi"]; ?>"></td>
    </tr>
    </table>
    </div>
    <button type="submit" class="btn2" style="display: block; margin: auto; margin-bottom: 8px;" name="submit">Submit</button>
    <a href="index.php"><button class="btn1" style="display: block; margin: auto;">Kembali</button></a>
    </form>
</body>
</html>