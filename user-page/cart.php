<?php 
	require '../adminpg/conn.php';
	session_start();
	if(!empty($_POST['selector'])) {
		$list[] = $_POST['selector']; //mengambil id yang dipilih dengan checkbox berupa array
		$jumlah[] = $_POST['jumlah']; // mengambil seluruh jumlah barang array
    	if (isset($_POST["submit"])) {
    		$idbrg[] = $_POST['id']; // mengambil seluruh id barang yang ada di keranjang
    		$idbrg=$idbrg[0]; // membuat array manjadi satu dimensi
    		$jumlah = $jumlah[0]; // membuat array manjadi satu dimensi
    		$noo=0;
    		foreach ($idbrg as $tbll) :
				$conn->query("UPDATE cart SET stok='$jumlah[$noo]' WHERE idbrg='$tbll'");
			$noo++;
    		endforeach; 
    		$_SESSION['list'] = $list;
    		echo "<script>
            document.location.href = 'checkout.php';
        </script>";
	}
	}	
	$nama = $_SESSION['user'];
	$result = query("SELECT * FROM cart WHERE iduser='$nama'"); //DISINI JANGAN LUPA UBAH NAMA TABEL DAN VARIABEL YANG DITARIK
	foreach ($result as $tbl):
		$row = mysqli_query($conn, "SELECT * FROM barang WHERE id='$tbl[idbrg]'");
		$hasil[] =mysqli_fetch_assoc($row);
	endforeach;
 ?>

 <!DOCTYPE html>
 <html>
 <head>
 	<meta charset="utf-8">
 	<meta name="viewport" content="width=device-width, initial-scale=1">
 	<link rel="stylesheet" type="text/css" href="../css/detail.css">
 	<style type="text/css">
 		.qty{
 			border-radius: 30px;
 			width: 30px;
 			display: block;
 			margin: auto;
 		}
 		.btn2min{
 			border-radius: 30px;
 			display: block;
 			margin: auto;
 		}
 		.btn2plus{
 			border-radius: 30px;
 			display: block;
 			margin: auto;
 		}
 		.btn1{
			display: block;
			margin: auto;
			color: white;
			font-family: arial;
			font-weight: bold;
			background-color: #f76b00;
			border: 0px;
			border-radius: 10px;
			padding: 12px;
		}
 	</style>
 	<title>Keranjang Anda</title>
 </head>
 <body>
	<!-- navbar -->
	<?php include('navbar.php'); ?>
    <!-- akhir navbar -->
    	<form action="" method="POST">
    	<div id="wrap">
 		<div>
 			
 				<?php $no=1;
 				foreach ($hasil as $tbl) : ?>

 				<div class="card" kode-id="<?= $no ?>">
 				<input type="hidden" name="id[]" value="<?= $tbl["id"]; ?>">
 				<div class="center" style="flex-basis: 100px">
	            <input type="checkbox" class="selector" name="selector[]" value="<?= $tbl["id"]; ?>" onchange="handleChange(this, '<?= $no ?>');">
	            </div>

	            <div class="center" style="flex-basis: 100px">
	        	<img src="<?= $tbl["gambar"] ?>" width="50" height="50">
	        	</div>

	        	<div style="flex-basis: 700px">
	        	<h5><?= $tbl["nama"]; ?></h5>
	        	<p>Rp.<b class="harga"><?= $tbl["harga"]; ?></b></p>
	        	</div>

	        	<div class="bottom" style="flex-basis: 100px">
			    	<p class="center"><b class="subtotal">Rp<?= number_format($result[$no-1]['stok']*$tbl["harga"], '0', '.', '.'); ?>,00</b>|
			    	<!-- DISINI CODING BUTTON INCREMENT &DECREMENT -->
			        <button class="btn2min" type="button" onclick="decrement('<?= $no ?>')">-</button>
			        <input type="number" class="qty" name="jumlah[]" value="<?= $result[$no-1]['stok'] ?>" min="1" onfocusout="calculate('<?= $no ?>')">
			        <button class="btn2plus" type="button" onclick="increment('<?= $no ?>')">+</button>|
			        <a href="../adminpg/delete.php?id2=<?= $tbl["id"]?>" onclick="return confirm('Yakin ingin MENGHAPUS DATA?');">
			        <img src="../images/bin.png" style="width: 25px; height: 25px;" onmouseover="hover(this);" onmouseout="unhover(this);"></a>
			    </p>    
			 	</div>

			    </div>
	            <?php 
	            $no++;
	             endforeach; 
	             ?>
 			<!-- </form> -->
 		</div>
 	<div class="sticky2">
 		<h4 id="black">Ringkasan Belanja</h4>
    <!-- PERHITUNGAN TOTAL PEMBELIAN -->
    <table>
        <tr>
            <td><p>Total Harga</p></td>
            <td id="cleartd">:</td>
            <td id="total">Rp 0,00</td>
        </tr>
    </table>
    <!-- <form action="tes.php" method="POST"> -->
    <!-- BUTTON +KERANJANG -->
    <button type="submit" class="btn1" name="submit">Beli</button>
 	</div>
 	</div>
 	</form>


 	<script>
 		var dftrharga = new Array(<?= $no ?>).fill(0);
 		
 		function handleChange(checkbox, a) {
 			var total = 0;
 			var val=document.querySelector(`.card[kode-id="${a}"] .qty`).value;
 			var harga=document.querySelector(`.card[kode-id="${a}"] .harga`).innerHTML;
	      	dftrharga[a] = Number(val*harga);
		    if(checkbox.checked == true){
				for(i = 1; i <dftrharga.length; i++){
				   total += dftrharga[i];
				}
			document.getElementById('total').innerHTML = Intl.NumberFormat("id-ID", { style: "currency", currency: "IDR" }).format(total);
		    }
		    if(checkbox.checked == false){
		    	dftrharga[a]=0;
		    	for(i = 1; i <dftrharga.length; i++){
				   total += dftrharga[i];
				}
		    	document.getElementById('total').innerHTML = Intl.NumberFormat("id-ID", { style: "currency", currency: "IDR" }).format(total);
		    }
		}
 		function increment(a) {
	      document.querySelector(`.card[kode-id="${a}"] .qty`).stepUp();
	      var val=document.querySelector(`.card[kode-id="${a}"] .qty`).value;
	      var harga=document.querySelector(`.card[kode-id="${a}"] .harga`).innerHTML;
	      dftrharga[a] = Number(val*harga);
	      document.querySelector(`.card[kode-id="${a}"] .subtotal`).innerHTML = Intl.NumberFormat("id-ID", { style: "currency", currency: "IDR" }).format(val*harga);
	      var total = 0;
	      var checkbox = document.querySelector(`.card[kode-id="${a}"] .selector`);
	      if(checkbox.checked == true){
				for(i = 1; i <dftrharga.length; i++){
				   total += dftrharga[i];
				}
			document.getElementById('total').innerHTML = Intl.NumberFormat("id-ID", { style: "currency", currency: "IDR" }).format(total);
		    }
		   if(checkbox.checked == false){
		    	dftrharga[a]=0;
		    	for(i = 1; i <dftrharga.length; i++){
				   total += dftrharga[i];
				}
		    	document.getElementById('total').innerHTML = Intl.NumberFormat("id-ID", { style: "currency", currency: "IDR" }).format(total);
		    }
	      
	   }
   		function decrement(a) {
	      document.querySelector(`.card[kode-id="${a}"] .qty`).stepDown();
	      var val=document.querySelector(`.card[kode-id="${a}"] .qty`).value;
	      var harga=document.querySelector(`.card[kode-id="${a}"] .harga`).innerHTML;
	      dftrharga[a] = Number(val*harga);
	      document.querySelector(`.card[kode-id="${a}"] .subtotal`).innerHTML = Intl.NumberFormat("id-ID", { style: "currency", currency: "IDR" }).format(val*harga);
	      var total = 0;
	      var checkbox = document.querySelector(`.card[kode-id="${a}"] .selector`);
	      if(checkbox.checked == true){
				for(i = 1; i <dftrharga.length; i++){
				   total += dftrharga[i];
				}
			document.getElementById('total').innerHTML = Intl.NumberFormat("id-ID", { style: "currency", currency: "IDR" }).format(total);
		    }
		   if(checkbox.checked == false){
		    	dftrharga[a]=0;
		    	for(i = 1; i <dftrharga.length; i++){
				   total += dftrharga[i];
				}
		    	document.getElementById('total').innerHTML = Intl.NumberFormat("id-ID", { style: "currency", currency: "IDR" }).format(total);
		    }
	   }
	   function calculate(a){
	   	  var val=document.querySelector(`.card[kode-id="${a}"] .qty`).value;
	      var harga=document.querySelector(`.card[kode-id="${a}"] .harga`).innerHTML;
	      dftrharga[a] = Number(val*harga);
	      document.querySelector(`.card[kode-id="${a}"] .subtotal`).innerHTML = Intl.NumberFormat("id-ID", { style: "currency", currency: "IDR" }).format(val*harga);
	      var total = 0;
	      var checkbox = document.querySelector(`.card[kode-id="${a}"] .selector`);
	      if(checkbox.checked == true){
				for(i = 1; i <dftrharga.length; i++){
				   total += dftrharga[i];
				}
			document.getElementById('total').innerHTML = Intl.NumberFormat("id-ID", { style: "currency", currency: "IDR" }).format(total);
		    }
		   if(checkbox.checked == false){
		    	dftrharga[a]=0;
		    	for(i = 1; i <dftrharga.length; i++){
				   total += dftrharga[i];
				}
		    	document.getElementById('total').innerHTML = Intl.NumberFormat("id-ID", { style: "currency", currency: "IDR" }).format(total);
		    }
	   }
	   function hover(element) {
		  element.setAttribute('src', '../images/bin-hover.png');
		}

		function unhover(element) {
		  element.setAttribute('src', '../images/bin.png');
		}
 	</script>
 </body>
 </html>