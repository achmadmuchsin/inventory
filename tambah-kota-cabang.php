<?php
//include('dbconnected.php');
include('koneksi.php');

$nama_kota = $_GET['nama_kota'];
$alamat = $_GET['alamat'];


//query update
$query = mysqli_query($koneksi,"INSERT INTO `kota_cabang` (`id`, `nama_kota`, `alamat`) VALUES (null, '$nama_kota', '$alamat')");

if ($query) {
 # credirect ke page index
 header("location:kota-cabang.php"); 
}
else{
 echo "ERROR, data gagal diupdate". mysqli_error($koneksi);
}

//mysql_close($host);
?>