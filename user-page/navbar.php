<?php
  session_start();

  $username = $_SESSION['user'];
  $result = query("SELECT * FROM details_user WHERE username='$username'");
  $result = $result[0];

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/main-page.css" />
    
    <!-- fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
    <title>Document</title>
</head>
<body>
    <!-- navbar -->
    <div class="navbar">
        <img src="../images/logo.png" alt="logo" class="logo" />
        <div class="jarak"></div>
        <div class="user">
          <img src="../images/icon_cart.png" alt="keranjang">
          <img src="../images/icon_bell.png" alt="keranjang">
          <img src="../images/icon_email.png" alt="keranjang">
          <div class="divider"></div>
          <img src="../images/icon_avatar.png" alt="avatar" class="avatar">
          <span><div id="profile"><?= $result['nama'] ?></div></span>
        </div>
      </div>
      <!-- akhir navbar -->

      <script>
        var nama = document.getElementById("profile");
        nama.onClick = function () {
          document.location.href = "profile.php";
        }
      </script>
</body>
</html>