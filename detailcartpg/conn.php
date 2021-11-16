<?php
$conn = new mysqli("localhost","root","","dbtokopdia");
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
	$query = "SELECT * FROM tbgame WHERE $by LIKE '%$keyword%'";
	return query($query);
}


?>
