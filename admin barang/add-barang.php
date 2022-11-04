<?php

include  'koneksi.php' ;

$namabarang = $_POST['namabarang'] ;
$deskripsi = $_POST['deskripsi'] ;
$stok = $_POST['stok'] ;

$add = mysqli_query($db, " INSERT INTO stok VALUES ('','$namabarang', '$deskripsi', '$stok')") ;

header('location: index.php') ;

