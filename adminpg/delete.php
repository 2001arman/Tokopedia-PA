<?php
require 'conn.php';
error_reporting(0);
$id = $_GET['id'];
$id2 = $_GET['id2'];
if ($id2==null) {
    $conn->query("DELETE FROM barang WHERE id='$id'");
    if ($conn) {
    echo "<script>
        alert('Data berhasil dihapus!');
        document.location.href = 'index.php';
    </script>";
} else {
    echo "<script>
        alert('Data gagal dihapus!');
        document.location.href = 'index.php';
    </script>";
}
}
if ($id==null) {
    $conn->query("DELETE FROM cart WHERE idbrg='$id2'");
    if ($conn) {
    echo "<script>
        alert('Data berhasil dihapus!');
        document.location.href = '../user-page/cart.php';
    </script>";
} else {
    echo "<script>
        alert('Data gagal dihapus!');
        document.location.href = '../user-page/cart.php';
    </script>";
}
}

?>
