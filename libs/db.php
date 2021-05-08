<?php
	$host='localhost';
	$user='root';
	$pass='123';
	$db='dbdoanwebphim';

	$link=mysqli_connect($host,$user,$pass,$db) or die('Lỗi kết nối');
	//Dong bo charset
	mysqli_query($link,'set names utf8');
?>
