<?php
require 'conn.php';

$id = $_GET['id'];
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
