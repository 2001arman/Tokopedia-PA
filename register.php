<?php
require 'koneksi.php';

if (isset($_POST['register'])){
    $username = $_POST['username'];
    $password = $_POST['password'];
    $cpassword = $_POST["cpassword"];


    if ($password === $cpassword){
        $password = password_hash($password, PASSWORD_DEFAULT);
    
    }else{
        echo "<script>
            alert('Konfirmasi Password Anda Tidak sesuai!');
            document.location.href = 'register.php'
            </script>";
    }
}
if (isset($_POST['register'])){
    $username = $_POST['username'];
    $password = $_POST['password'];
    $cpassword = $_POST["cpassword"];
    $nama = $_POST["nama"];
    $alamat = $_POST["alamat"];
    $no_hp = $_POST["no_hp"];
    $keranjang = $_POST["username"];
    $riwayat = $_POST["username"];

if ($password === $cpassword){
    $password = password_hash($password, PASSWORD_DEFAULT);
    $result = mysqli_query($conn, "SELECT username FROM user WHERE username = '$username'");

    if (mysqli_fetch_assoc($result)) {
        echo "
        <script>
            alert('Username telah di gunakan. Silahkan cari lagi!');
        </script>";
   
    }else {
        $sql = "INSERT INTO user VALUES('','$username','$password')";
        $result = mysqli_query($conn, $sql);

        if(mysqli_affected_rows($conn) > 0) {
            $sql = "INSERT INTO details_user VALUES('$username','$nama','$alamat','$no_hp','$keranjang','$riwayat')";
            $result = mysqli_query($conn, $sql);
            echo "<script>
            alert('Registrasi Telah Berhasil');
            document.location.href = 'login.php'
            </script>";
        } else {
             echo "<script>
             alert('Registrasi Gagal');
             document.location.href = 'register.php'
             </script>";
     }
  
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
    <link rel="stylesheet" href="css/register.css">
    <title>Registrasi</title>
</head>
<body>
    <form action="" method="POST">
     <div class="container">
         <h1>Sign Up</h1>
            <label for="username"><b>Username</b></label>
                <input type="text" placeholder="Masukkkan Username" name="username" id="username" required>
                
            <label for="nama"><b>Nama</b></label>
                <input type="text" placeholder="Masukkkan Nama" name="nama" id="nama" required>

            <label for="alamat"><b>Alamat</b></label>
                <input type="text" placeholder="Masukkkan Alamat" name="alamat" id="alamat" required>

            <label for="no_hp"><b>No.Hp</b></label>
                <input type="text" placeholder="Masukkkan No.HP" name="no_hp" id="no_hp" required>

            <label for="email"><b>Email</b></label>
                <input type="text" placeholder="Masukkkan email" name="email" id="email" required>

            <label for="password"><b>Password</b></label>
                <input type="password" placeholder="Masukkan Password" name="password" id="password" required>
                
            <label for="cpassword"><b>Konfirmasi Password</b></label>
                <input type="password" placeholder="Konfirmasi Password" name="cpassword" id="cpassword" required>
                <input type="checkbox" onclick="myFunction()">Show Password
     </div>
     <div class="clearfix">
      <button type="button" class="cancelbtn" ><a href="Login.php"style="color:#f1f1f1">Cancel</a></button> 
      <button type="submit" class="signupbtn" name="register" id="register">Sign Up</button>
    </div>
  </div>
    </form>
    <script src="script.js"></script>  
</body>
</html>