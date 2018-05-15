<?php 
include("connection.php");

$gambar = $_POST["gambar"];
$ket = $_POST["ket"];
$dir = "/assest/img/$gambar.png";
$url = "http://192.168.10.10/demo/$dir";

$query = "INSERT INTO gambar(id_gambar,gambar,keterangan_gambar) VALUES ('','$gambar','$ket')";

$data=mysqli_query($conn,$query);
if ($data) {
	file_put_contents($url, base64_decode($ket));
}else{
	echo "loi";
}


 ?>
