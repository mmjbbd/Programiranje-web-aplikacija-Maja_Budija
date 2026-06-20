<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="style.css">
<title>Vijesti</title>

<style>

</style>

</head>
<body>


<div class="navbar">
    <div class="navbar-items">
    <div class="logo">BBC</div>
    <a href="bbc-pwa-index.php">Home</a>
    <a href="vijesti.php">Vijesti</a>
    <a href="sport.php">Sport</a>
    <a href="registracija.php">Registracija</a>
    <a href="administracija.php">Administracija</a>
    <a href="unos.php">Unos</a>
    </div>
</div>

<div class="container-sport">

    
    <div class="sport">
        <h2>VIJESTI</h2>
    </div>
</div>



<div class="container">

    <?php
include "db.php";

$result = $conn->query("SELECT * FROM vijesti WHERE category='kultura' AND archive=0 ORDER BY id DESC");

while ($row = $result->fetch_assoc()) {
?>

<div class="container">

    <h3><?php echo $row['title']; ?></h3>

    <img width="70%" src="<?php echo $row['image']; ?>">

    <div class="container-opis">

        <h5><?php echo $row['about']; ?></h5>

        <p><?php echo nl2br($row['content']); ?></p>

    </div>

</div>

<?php
}
?>

</div>
   
    




<div class="footer">
    <hr style="width:70%;color:grey;margin-bottom: 2%;">
   <p> <b>Copyright 2019 BBC.</b> The BBC is not responsible for the content of external sites. Read about our approach to external linking.</p>
</div>

</body>
</html>