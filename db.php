<?php

const DB_HOST = 'localhost';
const DB_USER = '202410101021';
const DB_PASS = 'secret';
const DB_NAME = 'uas202410101021';

$server = "localhost";
$username = "202410101021";
$password = "secret";
$database = "uas202410101021";

$conn = mysqli_connect($server, $username, $password, $database) or die("Koneksi ke database gagal");