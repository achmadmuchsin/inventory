<?php
//include('dbconnected.php');
include('koneksi.php');

$tgl_pengeluaran = $_GET['tgl_pengeluaran'];
$jumlah = $_GET['jumlah'];
$id_sumber = $_GET['id_sumber'];

//query update
$query = mysqli_query($koneksi,"INSERT INTO `pengeluaran` (`tgl_pengeluaran`, `jumlah`, `id_sumber`) VALUES ('$tgl_pengeluaran', '$jumlah', '$id_sumber')");

if ($query) {
 # credirect ke page index
 header("location:pengeluaran.php"); 
}
else{
 echo "ERROR, data gagal diupdate". mysqli_error($koneksi);
}

//mysql_close($host);
?>