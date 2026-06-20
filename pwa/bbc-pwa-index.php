<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="style.css">
<title>BBC</title>

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

<div class="container">

    
    <div class="header">
        <h2>Welcome to BBC.com</h2>
        <p><?php echo date("l, d F"); ?></p>
    </div>

   
    <div class="section-title">Vijesti</div>

    <div class="grid">
    <?php
    include "db.php";

    $result = $conn->query("SELECT * FROM vijesti WHERE category='kultura' AND archive=1 ORDER BY id DESC");

    while ($row = $result->fetch_assoc()) {
    ?>
        <div class="card">
            <img src="<?php echo $row['image']; ?>">

            <h3>
    <a href="clanak.php?id=<?php echo $row['id']; ?>">
        <?php echo $row['title']; ?>
    </a>
</h3>

            <p><?php echo $row['about']; ?></p>
        </div>
    <?php
    }
    ?>
</div>

   
    <div class="section-title-sport">Sport</div>

    <div class="grid-sport">
    <?php
    include "db.php";

    $result = $conn->query("SELECT * FROM vijesti WHERE category='sport' AND archive=1 ORDER BY id DESC");

    while ($row = $result->fetch_assoc()) {
    ?>
        <div class="card">
            <img src="<?php echo $row['image']; ?>">

            <h3>
    <a href="clanak.php?id=<?php echo $row['id']; ?>">
        <?php echo $row['title']; ?>
    </a>
</h3>

            <p><?php echo $row['about']; ?></p>
        </div>
    <?php
    }
    ?>
</div>


   


</div>




<div class="footer">
    <hr style="width:70%;color:grey;margin-bottom: 2%;">
   <p> <b>Copyright 2019 BBC.</b> The BBC is not responsible for the content of external sites. Read about our approach to external linking.</p>
</div>

</body>
</html>