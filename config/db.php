<?php
$host = 'localhost';
$dbname = 'BookCompany'; //sesuaikan namanya dengan database
$user = 'postgres';  //default user poostgres
$password = ''; //pasword postgres
$conn = pg_connect("host=$host dbname=$dbname user=$user
password=$password");
if (!$conn) {
    die("Koneksi gagal: " . pg_last_error());
}