<?php
require 'conn.php';

// $nama = $_GET["nama"];
$result = query("SELECT * FROM tbbarang WHERE nama='Sepatu Ventela'"); //DISINI JANGAN LUPA UBAH NAMA TABEL DAN VARIABEL YANG DITARIK
$result = $result[0];
$trim = substr($result["desc_brg"],0,200);
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="style.css" />
    <title>Detail Page</title><!-- DISINI ISI PAKE VARIABEL YANG DIAMBIL -->
</head>
<body>
    <div id="wrapper">
	<div>
    <img id="gambar" src="<?= $result["gambar"]; ?>"> 
    </div>

    <div id="detail">
    <h1><?= $result["nama"]; ?></h1>
    <h3>Rp. <?= $result["harga"]; ?></h3>
    <h4>Detail Produk</h4>
    <p>
        <!-- TAMPILAN TEKS DETAIL TRIMMED -->
    	<div id="trim">
    	<?= nl2br($trim); ?>(...)
    	</div>
        <!-- TAMPILAN TEKS DETAIL SHOW ALL -->
    	<div id="more">
    		<?=nl2br(substr($result["desc_brg"],0,strlen($result["desc_brg"])))?>	
    	</div>
    	<button onclick="readmore()" id="btn3">Selengkapnya</button>
    </p>
    </div>

    <div id="box">
    <h4 id="black">Atur jumlah barang pesanan</h4>
    <form action="#" method="POST">
    <!-- DISINI CODING BUTTON INCREMENT &DECREMENT -->
    <p>
        <button class="btn2min" type="button" onclick="decrement()">-</button>
        <input type="number" id="qty" name="jumlah" value="1" min="1" max="<?= $result["stok"]; ?>">
        <button class="btn2plus" type="button" onclick="increment()">+</button> 
        Stok : <b><?= $result["stok"]; ?></b>
    </p>
    
    <!-- PERHITUNGAN TOTAL PEMBELIAN -->
    <p id="det">Max. pembelian <?= $result["stok"]; ?> pcs</p>
    <table>
        <tr>
            <td><p>Subtotal</p></td>
            <td id="cleartd">:</td>
            <td id="total"><b>Rp. <?= $result["harga"] ?></b></td>
        </tr>
    </table>
    <!-- BUTTON +KERANJANG -->
    <button type="submit" class="btn1" name="submit">+ Keranjang</button>
    </form> 
    </div>
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
      document.getElementById('total').innerHTML = val*<?= $result["harga"] ?>;
   }
   function decrement() {
      document.getElementById('qty').stepDown();
      var val=document.getElementById('qty').value;
      document.getElementById('total').innerHTML = val*<?= $result["harga"] ?>;
   }
    </script>
</body>
</html>