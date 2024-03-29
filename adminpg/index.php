<?php
require 'conn.php';
session_start();
  if(!isset($_SESSION['admin'])){
    header("Location: ../login.php");
    exit;
  }
$result = query("SELECT * FROM barang");
    if (isset($_POST["cari"])) {
        $by = ($_POST['by']);
        $result = search($_POST['search'], $by);
    }
if (isset($_POST["sort"])) {
    $sortto=($_POST["sortto"]);
    $sortkey=($_POST["sortby"]);
        $result= query("SELECT * FROM barang ORDER BY $sortkey $sortto ");
}
?>

 <!DOCTYPE html>
 <html>
 <head>
     <meta charset="utf-8">
     <meta name="viewport" content="width=device-width, initial-scale=1">
     <link rel="stylesheet" type="text/css" href="style.css" />
     <title>Admin HomePage</title>
 </head>
 <body>
    <form action="" method="POST">
    <div id="navbar">
        <div>
        <input type="text" name="search" placeholder="Search" >
        <select name='by'>
        <option value='all'>All</option>
        <option value='nama'>Nama/Judul Barang</option>
        <option value='desc_brg'>Deksripsi Barang</option>
        <option value='stok'>Stok</option>
        <option value='harga'>Harga</option>
        <option value='kategori'>Kategori</option>
        </select>
        <button type="submit" class="btn3" name="cari">Cari</button>
        </div>
        <div>
        <select name='sortby'>
        <option value='nama'>Nama/Judul Barang</option>
        <option value='stok'>Stok</option>
        <option value='harga'>Harga</option>
        </select>
        <label>
        <input type="radio" name="sortto" value="ASC">Ascend
        </label>

        <label>
        <input type="radio" name="sortto" value="DESC">Descend
        </label>
        <button type="submit" class="btn3" name="sort">Sort</button>
        </div>
    </div>
    </form>
    <table>
        <thead>
        <tr>
            <th>No.</th>
            <th>Nama Barang</th>
            <th>Deskripsi</th>
            <th>Stok</th>
            <th>Harga</th>
            <th>Gambar</th>
            <th>Kategori</th>
            <th>Ratingi</th>
            <th>Terjual</th>
            <th>Lokasi</th>
        </tr>
        </thead>
        <tbody>
            <?php $no=1  ?>
            <?php foreach ($result as $tbl) : ?>
            <tr>
                <td align="center"><?= $no; ?></td>
                <td class="fixtbl1"><?= $tbl["nama"]; ?></td>
                <td class="fixtbl2">
                <div class="dekripsi" kode-id="<?= $no ?>">
                
                
                <!-- TAMPILAN TEKS DETAIL TRIMMED -->
                <div class="trim">
                <?= nl2br(substr($tbl["deskripsi"],0,10)); ?>(...)
                </div>
                <!-- TAMPILAN TEKS DETAIL SHOW ALL -->
                <div class="more">
                    <?=nl2br($tbl["deskripsi"])?>   
                </div>
                <button type="button" onclick="readmore('<?= $no ?>')" class="btn">Selengkapnya</button>
                

                </div>
                </td>
                <td><?= $tbl["stok"]; ?></td>
                <td><?= $tbl["harga"]; ?></td>
                <td>
                   <img src="<?= $tbl["gambar"]; ?>" width="100" height="100" >
                </td>
                <td><?= $tbl["kategori"]; ?></td>
                <td><img src="../images/icon_star.png" alt="star" class="icon"><?= $tbl["rating"]; ?></td>
                <td><?= $tbl["terjual"]; ?></td>
                <td><?= $tbl["lokasi"]; ?></td>
                <td>
                    <a href="delete.php?id=<?= $tbl["id"]?>" onclick="return confirm('Yakin ingin MENGHAPUS DATA?');"><button type="submit" class="btn1" name="del">Hapus</button></a>
                    <a href="edit.php?id=<?= $tbl["id"]?>"><button class="btn2">Edit data</button></a>
                </td>
            </tr>
            <?php $no++; ?>
            <?php endforeach; ?>
        </tbody>
    </table>
    <br>
    <button class="btn4"><a href="add.php">Tambah data</a></button><br>
    <button class="btn4"><a href="../logout.php">Logout</a></button>



    <script>
    function readmore(a) {
        var trim = document.querySelector(`.dekripsi[kode-id="${a}"] .trim`);
        var more = document.querySelector(`.dekripsi[kode-id="${a}"] .more`);
        var btn = document.querySelector(`.dekripsi[kode-id="${a}"] .btn`);

        if (trim.style.display === "none") {
            trim.style.display = "inline";
            btn.innerHTML = "Selengkapnya";
            more.style.display = "none";

        }
        else{
            trim.style.display = "none";
            btn.innerHTML ="Lebih Sedikit";
            more.style.display = "inline";
        }
    }
    </script>
 </body>
 </html>