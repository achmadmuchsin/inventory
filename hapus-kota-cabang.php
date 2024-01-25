<?php
//include('dbconnected.php');
include('koneksi.php');

$id = $_GET['id'];

//query update
$query = mysqli_query($koneksi,"DELETE FROM `kota_cabang` WHERE id = '$id'");

if ($query) {
 # credirect ke page index
 header("location:kota-cabang.php"); 
}
else{
 echo "ERROR, data gagal diupdate". mysqli_error($koneksi);
}

//mysql_close($host);
?>