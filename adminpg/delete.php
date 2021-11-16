<?php
require 'conn.php';

$nama = $_GET['nama'];
$conn->query("DELETE FROM tbbarang WHERE nama='$nama'");

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
