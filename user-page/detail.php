<?php
    error_reporting(0);
    
    session_start();
    require '../adminpg/conn.php';
    $iduser= $_SESSION['user'];//jangan lupa diubah jadi _POST
    $id = $_GET['id']; //jangan lupa diubah jadi _POST
    $duplikat = false;
    $result = query("SELECT * FROM barang WHERE id='$id'"); //DISINI JANGAN LUPA UBAH NAMA TABEL DAN VARIABEL YANG DITARIK
    $check = mysqli_query($conn, "SELECT * FROM `cart` WHERE `idbrg` = $id AND `iduser` LIKE '$iduser'");//jangan lupa disini ubah idusernya
    if(null !==(mysqli_fetch_assoc($check))){
        $duplikat=true;
    }
    $result = $result[0];
    $trim = substr($result["deskripsi"],0,200);
    if (isset($_POST["submit"])) {
        $stok = htmlspecialchars($_POST['jumlah']);
        $idBarang = $_POST['id'];
        $conn->query("INSERT INTO cart (`idbrg`, `iduser`, `stok`) VALUES ('$idBarang','$iduser','$stok')");

        if ($conn) {
            echo "<script>
                alert('Data berhasil ditambahkan!');
                document.location.href = 'detail.php?id=$idBarang';
            </script>";
        } else {
            echo "<script>
                alert('Data gagal ditambahkan!');
                document.location.href = 'detail.php?id=$idBarang';
            </script>";
        }
        }
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="../css/detail.css" />
    <title><?= $result["nama"]; ?></title><!-- DISINI ISI PAKE VARIABEL YANG DIAMBIL -->
</head>
<body>

    <!-- navbar -->
    <?php include('navbar.php'); ?>
    <!-- akhir navbar -->

    <div class="sticky">
    <img id="gambar" src="<?= $result["gambar"]; ?>" width="350" height="350"> 
    </div>

    <div id="detail">
    <h3 style="margin-bottom: 5px"><?= $result["nama"]; ?></h3>
    <p style="font-size: 14px">Terjual <?= $result["terjual"]; ?> | <img src="../images/icon_star.png" alt="star" class="icon"><?= $result["rating"]; ?></p>
    <p style="margin-top: 5px"><?= $result["lokasi"]; ?></p><br>
    <h2>Rp. <?= number_format($result["harga"], '0', '.', '.'); ?></h2><br>
    <h4>Detail Produk</h4><br>
    <p>
        <!-- TAMPILAN TEKS DETAIL TRIMMED -->
    	<div id="trim">
    	<?= nl2br($trim); ?>(...)
    	</div>
        <!-- TAMPILAN TEKS DETAIL SHOW ALL -->
    	<div id="more">
    		<?=nl2br(substr($result["deskripsi"],0,strlen($result["deskripsi"])))?>	
    	</div>
    	<button onclick="readmore()" id="btn3">Selengkapnya</button>
    </p>
    </div>

    <div class="sticky" id="box">
    <h4 id="black">Atur jumlah barang pesanan</h4>
    <form action="detail.php" method="POST">
    <div id="box2">
    <!-- DISINI CODING BUTTON INCREMENT &DECREMENT -->
    <div>
    <p>
        <input type="hidden" name="id" value="<?=$id?>">
        <button class="btn2min" type="button" onclick="decrement()">-</button>
        <input type="number" class="qty" id="qty" name="jumlah" value="1" min="1" max="<?= $result["stok"]; ?>">
        <button class="btn2plus" type="button" onclick="increment()">+</button> 
        Stok : <b><?= $result["stok"]; ?></b>
    </p>
    <p id="det">Max. pembelian <?= $result["stok"]; ?> pcs</p>
    </div>
    <div>
    <!-- PERHITUNGAN TOTAL PEMBELIAN -->
    <table>
        <tr>
            <td><p>Subtotal</p></td>
            <td id="cleartd">:</td>
            <td><b id="total">Rp.<?= number_format($result["harga"], '0', '.', '.') ?>,00</b></td>
        </tr>
    </table>
    <br>
    <!-- BUTTON +KERANJANG -->
    <?php if($duplikat==true){ ?>
    <button type="button" class="btn4">Sudah di Keranjang</button>
    <?php } 
    if ($duplikat==false) {?>
    <button type="submit" class="btn1" name="submit">+ Keranjang</button>
    <?php } ?>
    <br>
    <a href="cart.php"><button type="button" class="btn4" name="beli">Beli</button></a>
    </div>
    </div>
    </form> 
    </div>


    <script>    
 	function readmore() {
 		var trim = document.getElementById('trim');
 		var more = document.getElementById('more');
 		var btn = document.getElementById('btn3');

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
   function increment() {
      document.getElementById('qty').stepUp();
      var val=document.getElementById('qty').value;
      document.getElementById('total').innerHTML = Intl.NumberFormat("id-ID", { style: "currency", currency: "IDR" }).format(val*<?= $result["harga"] ?>);
   }
   function decrement() {
      document.getElementById('qty').stepDown();
      var val=document.getElementById('qty').value;
      document.getElementById('total').innerHTML = Intl.NumberFormat("id-ID", { style: "currency", currency: "IDR" }).format(val*<?= $result["harga"] ?>);
   }
    </script>
</body>
</html>