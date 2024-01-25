<?php
//include('dbconnected.php');
include('koneksi.php');


// $nama = $_GET['nama'];
$id_cabang = $_GET['id_cabang'];
$nama = $_GET['nama'];
$posisi = $_GET['posisi'];
$alamat = $_GET['alamat'];
$umur = $_GET['umur'];
$kontak = $_GET['kontak'];



//query update
$query = mysqli_query($koneksi,"INSERT INTO `karyawan` (`id_cabang`, `nama`, `posisi`, `alamat`, `umur`, `kontak`) VALUES ('$id_cabang', '$nama', '$posisi', '$alamat', '$umur', '$kontak')");

if ($query) {
 # credirect ke page index
 header("location:cabang.php"); 
}
else{
 echo "ERROR, data gagal diupdate". mysqli_error($koneksi);
}

//mysql_close($host);
?>