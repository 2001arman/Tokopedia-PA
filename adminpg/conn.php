<?php
$conn = new mysqli("localhost","root","","tokopedia");
if($conn){
    
}
else{echo "connection FAIL";
exit();}

function query($query){
	global $conn;
	$result = mysqli_query($conn, $query);
	$rows = [];
	while ($row = mysqli_fetch_assoc($result)) {
    $rows[] = $row;
	}
	return $rows;
}

function search($keyword, $by){
	if ($by=='all') {
		$query = "SELECT * FROM tbbarang WHERE 
		nama LIKE '%$keyword%'
		OR desc_brg LIKE '%$keyword%'
		OR stok LIKE '%$keyword%'
		OR harga LIKE '%$keyword%'
		OR gambar LIKE '%$keyword%'
		OR kategori LIKE '%$keyword%'
		";
	}
	else{
		$query = "SELECT * FROM barang WHERE $by LIKE '%$keyword%'";
	}
	return query($query);
}


?>
