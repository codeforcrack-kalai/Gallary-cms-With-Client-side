<?php
$database="gallerycms_kalai";
$user="root";
$pass="";
$host="localhost";

mysql_connect("$host","$user","$pass") or die("error in connect database");
mysql_select_db("$database") or die("Error in selecting the database");



?>
