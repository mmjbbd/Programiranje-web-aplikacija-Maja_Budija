<?php
include "db.php";

$msg = "";
$registriranKorisnik = false;

if ($_SERVER["REQUEST_METHOD"] == "POST") {

    $ime = $_POST['ime'];
    $prezime = $_POST['prezime'];
    $username = $_POST['username'];
    $lozinka = $_POST['pass'];
    $lozinka2 = $_POST['passRep'];

    if ($lozinka !== $lozinka2) {
        $msg = "Lozinke nisu iste!";
    } else {

        $hashed_password = password_hash($lozinka, PASSWORD_DEFAULT);
        $razina = 0;

        $stmt = $conn->prepare("SELECT id FROM korisnik WHERE korisnicko_ime = ?");
        $stmt->bind_param("s", $username);
        $stmt->execute();
        $stmt->store_result();

        if ($stmt->num_rows > 0) {
            $msg = "Korisničko ime već postoji!";
        } else {

            $stmt = $conn->prepare("INSERT INTO korisnik (ime, prezime, korisnicko_ime, lozinka, razina)
                                   VALUES (?, ?, ?, ?, ?)");

            $stmt->bind_param("ssssi", $ime, $prezime, $username, $hashed_password, $razina);

            if ($stmt->execute()) {
                $registriranKorisnik = true;
            }
        }
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="style.css">
<title>Registracija</title>
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

<?php if ($registriranKorisnik): ?>

    <h2 style="margin-top:40px;">✅ Korisnik je uspješno registriran!</h2>

<?php else: ?>

    <h2 style="margin-top:40px;">Registracija</h2>

    <form method="POST" action="">

        <div class="form-item">
            <label>Ime:</label>
            <input type="text" name="ime" class="form-field-textual">
        </div>

        <div class="form-item">
            <label>Prezime:</label>
            <input type="text" name="prezime" class="form-field-textual">
        </div>

        <div class="form-item">
            <label>Korisničko ime:</label>
            <span style="color:red;"><?php echo $msg; ?></span>
            <input type="text" name="username" class="form-field-textual">
        </div>

        <div class="form-item">
            <label>Lozinka:</label>
            <input type="password" name="pass" class="form-field-textual">
        </div>

        <div class="form-item">
            <label>Ponovi lozinku:</label>
            <input type="password" name="passRep" class="form-field-textual">
        </div>

        <div class="form-item">
            <button type="submit">Registracija</button>
        </div>

    </form>

<?php endif; ?>

</div>


<div class="footer">
    <hr style="width:70%;color:grey;margin-bottom: 2%;">
    <p><b>Copyright 2019 BBC.</b> The BBC is not responsible for the content of external sites. Read about our approach to external linking.</p>
</div>

</body>
</html>