<?php
require 'conn.php';
$result = query("SELECT * FROM tbbarang");
    if (isset($_POST["cari"])) {
        $by = ($_POST['by']);
        $result = search($_POST['search'], $by);
    }
if (isset($_POST["sort"])) {
    $sortto=($_POST["sortto"]);
    $sortkey=($_POST["sortby"]);
        $result= query("SELECT * FROM tbbarang ORDER BY $sortkey $sortto ");
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
        <button type="submit" class="btn" name="cari">Cari</button>
        </div>
        <div>
        <select name='sortby'>
        <option value='nama'>Nama/Judul Barang</option>
        <option value='stok'>Stok</option>
        <option value='harga'>Harga</option>
        <label>
        <input type="radio" name="sortto" value="ASC">Ascend
        </label>

        <label>
        <input type="radio" name="sortto" value="DESC">Descend
        </label>
        
        </select>
        <button type="submit" class="btn" name="sort">Sort</button>
        </div>
        </div>
        <br>
        <br>
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
        </tr>
        </thead>
        <tbody>
            <?php $no=1  ?>
            <?php foreach ($result as $tbl) : ?>
            <tr>
                <td align="center"><?= $no; ?></td>
                <td><?= $tbl["nama"]; ?></td>
                <td>
                <div class="namakelas" kode-id="<?= $no ?>">
                
                
                <!-- TAMPILAN TEKS DETAIL TRIMMED -->
                <div class="trim">
                <?= nl2br(substr($tbl["desc_brg"],0,10)); ?>(...)
                </div>
                <!-- TAMPILAN TEKS DETAIL SHOW ALL -->
                <div class="more">
                    <?=nl2br($tbl["desc_brg"])?>   
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
                <td>
                    <button type="submit" class="btn1" name="del"><a href="delete.php?nama=<?= $tbl["nama"]?>">Hapus</a></button>

                    <button class="btn2"><a href="edit.php?nama=<?= $tbl["nama"]?>">Edit data</a></button>
                </td>
            </tr>
            <?php $no++; ?>
            <?php endforeach; ?>
        </tbody>
    </table>
    <br>
    <button class="btn4"><a href="add.php">Tambah data</a></button>



    <script>
    function readmore(a) {
        var trim = document.querySelector(`.namakelas[kode-id="${a}"] .trim`);
        var more = document.querySelector(`.namakelas[kode-id="${a}"] .more`);
        var btn = document.querySelector(`.namakelas[kode-id="${a}"] .btn`);

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