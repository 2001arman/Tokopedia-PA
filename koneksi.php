<?php
    $server = "localhost";
    $username = "root";
    $password = "";
    $dbname = "tokopedia";//nama database yang di buat

    $conn = mysqli_connect($server,$username,$password,$dbname);

    if (!$conn){
        die("Gagal Terhubung ke database" . mysqli_connect_error());
    }

?>