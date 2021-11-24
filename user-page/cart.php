<?php 
	session_start();
	require '../adminpg/conn.php';
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

 		<div>
 			<form action="" method="POST">
 				<?php $no=1;
 				foreach ($hasil as $tbl) : ?>
 				<div class="card" kode-id="<?= $no ?>">

 				<div class="center" style="flex-basis: 100px">
	            <input type="checkbox" class="selector" name="selector" onchange="handleChange(this, '<?= $no ?>');">
	            </div>

	            <div class="center" style="flex-basis: 100px">
	        	<img src="<?= $tbl["gambar"] ?>" width="50" height="50">
	        	</div>

	        	<div style="flex-basis: 700px">
	        	<h5><?= $tbl["nama"]; ?></h5>
	        	<p>Rp.<b class="harga"><?= $tbl["harga"]; ?></b></p>
	        	</div>

	        	<div class="bottom" style="flex-basis: 100px">
	        	<!-- DISINI CODING BUTTON INCREMENT &DECREMENT -->
			    	<p  class="center"><b>Rp.</b><b class="subtotal"><?= $result[$no-1]['stok']*$tbl["harga"]; ?></b>
			        <button class="btn2min" type="button" onclick="decrement('<?= $no ?>')">-</button>
			        <input type="number" class="qty" name="jumlah" value="<?= $result[$no-1]['stok'] ?>" min="1" onfocusout="calculate('<?= $no ?>')">
			        <button class="btn2plus" type="button" onclick="increment('<?= $no ?>')">+</button></p>
			 	</div>

			    </div>
	            <?php 
	            $no++;
	             endforeach; ?>
 			</form>
 		</div>
 	<div>
 		<h4 id="black">Ringkasan Belanja</h4>
    <!-- PERHITUNGAN TOTAL PEMBELIAN -->
    <table>
        <tr>
            <td><p>Total Harga</p></td>
            <td id="cleartd">:</td>
            <td id="total">0</td>
        </tr>
    </table>
    <!-- BUTTON +KERANJANG -->
    <button type="submit" class="btn1" name="submit">Beli</button>
 	</div>
 	<script>
 		var dftrharga = [];
 		
 		function handleChange(checkbox, a) {
 			var total = 0;
 			dftrharga[a] = Number(document.querySelector(`.card[kode-id="${a}"] .subtotal`).innerHTML);
		    if(checkbox.checked == true){
				for(i = 1; i <dftrharga.length; i++){
				   total += dftrharga[i];
				}
			document.getElementById('total').innerHTML = total;
		    }
		    if(checkbox.checked == false){
		    	dftrharga[a]=0;
		    	for(i = 1; i <dftrharga.length; i++){
				   total += dftrharga[i];
				}
		    	document.getElementById('total').innerHTML = total;
		    }
		}
 		function increment(a) {
	      document.querySelector(`.card[kode-id="${a}"] .qty`).stepUp();
	      var val=document.querySelector(`.card[kode-id="${a}"] .qty`).value;
	      var harga=document.querySelector(`.card[kode-id="${a}"] .harga`).innerHTML;
	      dftrharga[a] = Number(document.querySelector(`.card[kode-id="${a}"] .subtotal`).innerHTML = val*harga);
	      var total = 0;
	      var checkbox = document.querySelector(`.card[kode-id="${a}"] .selector`);
	      if(checkbox.checked == true){
				for(i = 1; i <dftrharga.length; i++){
				   total += dftrharga[i];
				}
			document.getElementById('total').innerHTML = total;
		    }
		   if(checkbox.checked == false){
		    	dftrharga[a]=0;
		    	for(i = 1; i <dftrharga.length; i++){
				   total += dftrharga[i];
				}
		    	document.getElementById('total').innerHTML = total;
		    }
	      
	   }
   		function decrement(a) {
	      document.querySelector(`.card[kode-id="${a}"] .qty`).stepDown();
	      var val=document.querySelector(`.card[kode-id="${a}"] .qty`).value;
	      var harga=document.querySelector(`.card[kode-id="${a}"] .harga`).innerHTML;
	      dftrharga[a] = Number(document.querySelector(`.card[kode-id="${a}"] .subtotal`).innerHTML = val*harga);
	      var total = 0;
	      var checkbox = document.querySelector(`.card[kode-id="${a}"] .selector`);
	      if(checkbox.checked == true){
				for(i = 1; i <dftrharga.length; i++){
				   total += dftrharga[i];
				}
			document.getElementById('total').innerHTML = total;
		    }
		   if(checkbox.checked == false){
		    	dftrharga[a]=0;
		    	for(i = 1; i <dftrharga.length; i++){
				   total += dftrharga[i];
				}
		    	document.getElementById('total').innerHTML = total;
		    }
	   }
	   function calculate(a){
	   	  var val=document.querySelector(`.card[kode-id="${a}"] .qty`).value;
	      var harga=document.querySelector(`.card[kode-id="${a}"] .harga`).innerHTML;
	      dftrharga[a] = Number(document.querySelector(`.card[kode-id="${a}"] .subtotal`).innerHTML = val*harga);
	      var total = 0;
	      var checkbox = document.querySelector(`.card[kode-id="${a}"] .selector`);
	      if(checkbox.checked == true){
				for(i = 1; i <dftrharga.length; i++){
				   total += dftrharga[i];
				}
			document.getElementById('total').innerHTML = total;
		    }
		   if(checkbox.checked == false){
		    	dftrharga[a]=0;
		    	for(i = 1; i <dftrharga.length; i++){
				   total += dftrharga[i];
				}
		    	document.getElementById('total').innerHTML = total;
		    }
	   }

 	</script>
 </body>
 </html>