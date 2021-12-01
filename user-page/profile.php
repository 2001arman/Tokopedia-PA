<?php

  session_start();

  require '../adminpg/conn.php';

  $username = $_SESSION['user'];
  $result = query("SELECT * FROM details_user WHERE username='$username'");
  $result = $result[0];

  if(isset($_POST['nama'])){
    $nama = $_POST['nama'];
    $sql = "UPDATE details_user SET nama = '$nama' WHERE username = '$username'";

    $result = mysqli_query($conn, $sql);

    if($result){
      echo "<script> alert('data nama berhasil diubah'); document.location.href = 'profile.php'; </script>";
    } else{
      echo "<script> alert('data gagal ditambahkan'); </script>";
    }
  }

  if(isset($_POST['alamat'])){
    $alamat = $_POST['alamat'];
    $sql = "UPDATE details_user SET alamat = '$alamat' WHERE username = '$username'";

    $result = mysqli_query($conn, $sql);

    if($result){
      echo "<script> alert('data alamat berhasil diubah'); document.location.href = 'profile.php'; </script>";
    } else{
      echo "<script> alert('data gagal ditambahkan'); </script>";
    }
  }

  if(isset($_POST['no_hp'])){
    $no_hp = $_POST['no_hp'];
    $sql = "UPDATE details_user SET no_hp = '$no_hp' WHERE username = '$username'";

    $result = mysqli_query($conn, $sql);

    if($result){
      echo "<script> alert('data nomor hp berhasil diubah'); document.location.href = 'profile.php'; </script>";
    } else{
      echo "<script> alert('data gagal ditambahkan'); </script>";
    }
  }

  if(isset($_POST['no_hp'])){
    $no_hp = $_POST['no_hp'];
    $sql = "UPDATE details_user SET no_hp = '$no_hp' WHERE username = '$username'";

    $result = mysqli_query($conn, $sql);

    if($result){
      echo "<script> alert('data nomor hp berhasil diubah'); document.location.href = 'profile.php'; </script>";
    } else{
      echo "<script> alert('data gagal ditambahkan'); </script>";
    }
  }

  if(isset($_POST['newpass2'])){
    $oldpass = $_POST['oldpass'];
    $newpass = $_POST['newpass'];
    $newpass2 = $_POST['newpass2'];
    $result = query("SELECT * FROM user WHERE username = '$username'");
    $result = $result[0];

      if (password_verify($oldpass, $result['password'])) {
        if ($newpass===$newpass2) {
          $newpass = password_hash($newpass, PASSWORD_DEFAULT);
          
          $sql = "UPDATE user SET password = '$newpass' WHERE username = '$username'";

          $result = mysqli_query($conn, $sql);
          echo "<script>
              alert('Password Berhasil Diubah');
              document.location.href = 'profile.php'
            </script>";
        }
        else{
          echo "<script>
              alert('Password Baru tidak Sama !!');
              document.location.href = 'profile.php'
            </script>";
        }
      }
      else{
        echo "<script>
        alert('Password Lama salah !!');
        document.location.href = 'profile.php'
        </script>";
      }

  }
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="../css/main-page.css" />
    <link rel="stylesheet" href="../css/profile.css" />
    <link rel="shortcut icon" href="https://ecs7.tokopedia.net/favicon/favicon-notif.ico" type="image/x-icon">
    <!-- fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;500;600;700;800&display=swap"
      rel="stylesheet"
    />
    <title>Profile</title>
  </head>
  <body>
    <!-- navbar -->
    <?php include('navbar.php'); ?>
    <!-- akhir navbar -->

    <!-- konten -->
    <div class="container">
      <div class="judul">
        <h2>Biodata Diri</h2>
      </div>
      <div class="konten">
        <div class="kiri">
          <img src="../images/icon_avatar.png" alt="avatar" class="avatar" />
          <button class="password" id="btnPassword">Ubah Kata Sandi</button>
        </div>
        <div class="kanan">
          <h4>Ubah Biodata Diri</h4>
          <p>Nama</p>
          <span><?= $result['nama'] ?> <a href="#" id="btnNama">Ubah</a></span>
          <p>Alamat</p>
          <span><?= $result['alamat'] ?> <a href="#" id="btnAlamat">Ubah</a></span>
          <p>Nomor Handphone</p>
          <span><?= $result['no_hp'] ?> <a href="#" id="btnHP">Ubah</a></span>
          <button class="logout" onClick="logout()">Logout</button>
        </div>
      </div>
    </div>
    <!-- akhir konten -->

    <!-- modal Nama -->
    <!-- The Modal -->
    <div id="modalNama" class="modal">
      <!-- Modal content -->
      <div class="modal-content">
        <span class="close" id="closeNama">&times;</span>
        <h3>Ubah Nama</h3>
        <p>Nama</p>
        <form action="profile.php" method="post">
          <input type="text" name="nama" id="nama" value="<?= $result['nama'] ?>"><br>
          <button type="submit">Simpan</button>
        </form>
      </div>
    </div>
    <!-- akhir modal Nama -->

    <!-- modal Alamat -->
    <!-- The Modal -->
    <div id="modalAlamat" class="modal">
      <!-- Modal content -->
      <div class="modal-content">
        <span class="close" id="closeAlamat">&times;</span>
        <h3>Ubah Alamat</h3>
        <p>Alamat</p>
        <form action="profile.php" method="post">
          <input type="text" name="alamat" id="alamat" value="<?= $result['alamat'] ?>"><br>
          <button type="submit">Simpan</button>
        </form>
      </div>
    </div>
    <!-- akhir modal Alamat -->

    <!-- modal HP -->
    <!-- The Modal -->
    <div id="modalHP" class="modal">
      <!-- Modal content -->
      <div class="modal-content">
        <span class="close" id="closeHP">&times;</span>
        <h3>Ubah Nomor Handphone</h3>
        <p>Nomor Handphone</p>
        <form action="profile.php" method="post">
          <input type="text" name="no_hp" id="no_hp" value="<?= $result['no_hp'] ?>"><br>
          <button type="submit">Simpan</button>
        </form>
      </div>
    </div>
    <!-- akhir modal HP -->

    <!-- modal Password -->
    <!-- The Modal -->
    <div id="modalPassword" class="modal">
      <!-- Modal content -->
      <div class="modal-content password">
        <span class="close" id="closePassword">&times;</span>
        <h3>Ubah Password</h3>
        <p>Password</p>
        <form action="profile.php" method="post">
          <input type="password" name="oldpass" id="oldpass" placeholder="Password Lama" required><br>
          <input type="password" name="newpass" id="newpass" placeholder="Password Baru" required><br>
          <input type="password" name="newpass2" id="newpass2" placeholder="Verifikasi Password Baru" required><br>
          <input type="checkbox" onclick="shpass()">Show Password
          <button type="submit">Simpan</button>
        </form>
      </div>
    </div>
    <!-- akhir modal Password -->

    <script type="text/javascript">
      function shpass() {
    var oldpass = document.getElementById("oldpass");
    var newpass = document.getElementById("newpass");
    var newpass2 = document.getElementById("newpass2");
    if (oldpass.type === "password") {
      oldpass.type = "text";
      newpass.type = "text";
      newpass2.type = "text";
    } else {
      oldpass.type = "password";
      newpass.type = "password";
      newpass2.type = "password";
    }
  }
  function logout() {
    document.location.href="../logout.php";
  }
    </script>
    <script src="profile.js">
    </script>
  </body>
</html>
