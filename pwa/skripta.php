<?php
include "db.php";


$slika = "";

if (!empty($_FILES["pphoto"]["name"])) {
    $slika = "images/" . basename($_FILES["pphoto"]["name"]);
    move_uploaded_file($_FILES["pphoto"]["tmp_name"], $slika);
}


$title = $_POST["title"];
$about = $_POST["about"];
$content = $_POST["content"];
$category = $_POST["category"];
$archive = isset($_POST["archive"]) ? 1 : 0;


$sql = "INSERT INTO vijesti (title, about, content, image, category, archive)
VALUES ('$title', '$about', '$content', '$slika', '$category', $archive)";

$conn->query($sql);


header("Location: bbc-pwa-index.php");
exit;
?>