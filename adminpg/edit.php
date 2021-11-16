<?php
require 'conn.php';

$nama = $_GET["nama"];
$result = query("SELECT * FROM tbbarang WHERE nama='$nama'");
$result = $result[0];

if (isset($_POST["submit"])) {
    $id = $result['id'];
    $nama = htmlspecialchars($_POST['name']);
    $desc = htmlspecialchars($_POST['desc']);
    $stok = htmlspecialchars($_POST['stok']);
    $harga = htmlspecialchars($_POST['harga']);
    $gambar = htmlspecialchars($_POST['gambar']);
    $kategori = htmlspecialchars($_POST['kategori']);
    $conn->query("UPDATE tbbarang SET 
        nama='$nama', 
        desc_brg='$desc',
        stok='$stok', 
        harga='$harga', 
        gambar='$gambar', 
        kategori='$kategori'  
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
    <title>Edit Data</title>
</head>
<body>
    <div id="wrapper">
    <form action="#" method="POST">
    <div class="inputan">
    <label for="name">Nama :</label>
    <input type="text" name="name" value="<?= $result["nama"]; ?>"><br>

    <label for="desc">Deskripsi :</label>
    <textarea name="desc" rows="10" cols="100"><?= $result["desc_brg"]; ?></textarea><br>

    <label for="stok">Stok :</label>
    <input type="number" name="stok" value="<?= $result["stok"]; ?>"><br>

    <label for="harga">Harga :</label>
    <input type="number" name="harga" value="<?= $result["harga"]; ?>"><br>

    <label for="gambar">File Gambar :</label>
    <input type="text" name="gambar" value="<?= $result["gambar"]; ?>"><p>Masukkan URL Gambar</p><br>

    <p>Kategori:
      <select name='kategori'>
        <option <?= $result['kategori'] == "Sepatu" ? "selected" : "" ?> value='Sepatu'>Sepatu</option>
        <option <?= $result['kategori'] == "Baju" ? "selected" : "" ?> value='Baju'>Baju</option>
        <option <?= $result['kategori'] == "Celana" ? "selected" : "" ?> value='Celana'>Celana</option>
        <option <?= $result['kategori'] == "Elektronik" ? "selected" : "" ?> value='Elektronik'>Elektronik</option>
      </select>
      </p>
      <button type="submit" class="btn2" name="submit">Submit</button>
      <button class="btn1"><a href="index.php">Kembali</a></button>
    </div>
    </form>
    </div>
</body>
</html>