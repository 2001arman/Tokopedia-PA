<?php
session_start();
include 'koneksi.php';

if(!isset($_SESSION['login'])){
    header("Location: login.php");
    exit;
} else{
    header("Location: user-page/main_page.php");
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Halaman User</title>
</head>
<body>
    <h3>Halaman user</h3>
    <a href="logout.php"><button>Logout</button></a>
    
</body>
</html>