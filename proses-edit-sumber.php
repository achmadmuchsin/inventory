<?php
//include('dbconnected.php');
include('koneksi.php');

$id = $_GET['id'];
$nama_kota = $_GET['nama_kota'];
$alamat = $_GET['alamat'];
//query update
$query = mysqli_query($koneksi,"UPDATE kota_cabang SET nama_kota='$nama_kota' , alamat='$alamat' WHERE id='$id' ");

if ($query) {
 # credirect ke page index
 header("location:kota-cabang.php"); 
}
else{
 echo "ERROR, data gagal diupdate". mysql_error();
}

//mysql_close($host);
?>