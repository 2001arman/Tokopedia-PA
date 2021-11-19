<?php
session_start();
require 'koneksi.php';

if(isset($_SESSION['login'])){

    header("Location: index.php");
    exit;
}

if (isset($_POST['login'])){
    $username = $_POST['username'];
    $password = $_POST['password'];

$result = mysqli_query($conn, "SELECT * FROM user WHERE username = '$username'");

if (mysqli_num_rows($result)=== 1) {
    $row = mysqli_fetch_assoc($result);


    if (password_verify($password, $row['password'])) {
        $_SESSION['login'] = true;
        header("Location: user-page/main_page.php");
        exit;
    }
}
$error = true;
}
//data admin
if (isset($_POST['login'])){
    $username = $_POST['username'];
    $password = $_POST['password'];

$list_user = [
	[
		'username' => 'admin',
		'password' => 'admin'
	]
];

$user = [
	'username' => $_POST['username'],
	'password' => $_POST['password'],
];


foreach ($list_user as $key => $value) {

	
	if($value['username'] == $user['username'] && $value['password'] == $user['password']){

		$_SESSION['login'] = true;
		header("Location: adminpg/index.php");

	}
}
}
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/login.css">
    <title>Login</title>
</head>
<body>
    <?php if(isset($error)) {
        echo "<p style='color: red;'>Username atau Password salah !</p>";
    } ?>
 
    <form action="" method="POST">
    <div class="container">
        <h1>Login</h1>
            <label for="username"><b>Username</b></label>
                <input type="text" placeholder="Masukkkan Username" name="username" id="username" required>

            <label for="psw"><b>Password</b></label>
                <input type="password" placeholder="Masukkan Password" name="password" id="password" required>
                <input type="checkbox" onclick="myFunction()">Show Password

            <button type="submit" name="login" id="login">Login</button>
        
    </div>

        <div class="container" style="background-color:#f1f1f1">
            <span class="signup">Belum Punya Akun ? <a href="register.php">Sign Up</a></span>
        </div>
    </form>
    <script src="script.js"></script>   
</body>
</html>