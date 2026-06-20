<?php
include "db.php";


if (!isset($_GET['id'])) {
    echo "Greška!";
    exit;
}

$id = $_GET['id'];


$stmt = $conn->prepare("SELECT * FROM vijesti WHERE id = ?");
$stmt->bind_param("i", $id);
$stmt->execute();
$result = $stmt->get_result();
$row = $result->fetch_assoc();


if (!$row) {
    echo "Vijest ne postoji!";
    exit;
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="style.css">
<title><?php echo $row['title']; ?></title>
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

<p><?php echo date("l, d F"); ?></p>

    <h2 style="margin-top:30px;"><?php echo $row['title']; ?></h2>

    <img src="<?php echo $row['image']; ?>" style="width:70%; height:300px; object-fit:cover;">

    <div class="container-opis">

        <h5 style="margin-top:15px;">
            <b><?php echo $row['about']; ?></b>
        </h5>

        <p>
            <?php echo nl2br($row['content']); ?>
        </p>

    </div>

</div>


<div class="footer">
    <hr style="width:70%;color:grey;margin-bottom: 2%;">
    <p><b>Copyright 2019 BBC.</b> The BBC is not responsible for the content of external sites.</p>
</div>

</body>
</html>