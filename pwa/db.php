<?php
$conn = new mysqli("localhost", "root", "", "vijesti");

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>