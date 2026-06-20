<?php
session_start();
include 'db.php';

define('UPLPATH', 'img/');

// LOGIN
if (isset($_POST['prijava'])) {

    $user = $_POST['username'];
    $pass = $_POST['lozinka'];

    $sql = "SELECT korisnicko_ime, lozinka, razina FROM korisnik WHERE korisnicko_ime=?";
    $stmt = mysqli_prepare($conn, $sql);
    mysqli_stmt_bind_param($stmt, "s", $user);
    mysqli_stmt_execute($stmt);
    mysqli_stmt_store_result($stmt);

    mysqli_stmt_bind_result($stmt, $ime, $hash, $level);
    mysqli_stmt_fetch($stmt);

    if (mysqli_stmt_num_rows($stmt) > 0 && password_verify($pass, $hash)) {
        $_SESSION['username'] = $ime;
        $_SESSION['level'] = $level;

        header("Location: administracija.php");
        exit();
    } else {
        $error = "Pogrešno korisničko ime ili lozinka!";
    }
}

// DELETE
if (isset($_POST['delete']) && isset($_SESSION['level']) && $_SESSION['level'] == 1) {

    $id = $_POST['id'];

    $stmt = mysqli_prepare($conn, "DELETE FROM vijesti WHERE id=?");
    mysqli_stmt_bind_param($stmt, "i", $id);
    mysqli_stmt_execute($stmt);
}

// UPDATE
if (isset($_POST['update']) && isset($_SESSION['level']) && $_SESSION['level'] == 1) {

    $id = $_POST['id'];
    $title = $_POST['title'];
    $about = $_POST['about'];
    $content = $_POST['content'];
    $category = $_POST['category'];
    $archive = isset($_POST['archive']) ? 1 : 0;

    // upload slike
    $picture = $_FILES['pphoto']['name'];

    if (!empty($picture)) {

        $target = UPLPATH . basename($picture);
        move_uploaded_file($_FILES["pphoto"]["tmp_name"], $target);

        $stmt = mysqli_prepare($conn, "UPDATE vijesti SET title=?, about=?, content=?, image=?, category=?, archive=? WHERE id=?");
        mysqli_stmt_bind_param($stmt, "ssssssi", $title, $about, $content, $picture, $category, $archive, $id);

    } else {

        $stmt = mysqli_prepare($conn, "UPDATE vijesti SET title=?, about=?, content=?, category=?, archive=? WHERE id=?");
        mysqli_stmt_bind_param($stmt, "ssssii", $title, $about, $content, $category, $archive, $id);
    }

    mysqli_stmt_execute($stmt);
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="style.css">
<title>Administracija</title>
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

        <?php if (isset($_SESSION['username'])): ?>
            <a href="logout.php">Logout</a>
        <?php endif; ?>
    </div>
</div>

<div class="container">

<h2>Administracija</h2>


<?php
// ADMIN
if (isset($_SESSION['username']) && $_SESSION['level'] == 1) {

    echo "<h3>Dobrodošao, ".$_SESSION['username']."</h3>";

    $result = mysqli_query($conn, "SELECT * FROM vijesti");

    while ($row = mysqli_fetch_assoc($result)) {
?>

<form enctype="multipart/form-data" method="POST" style="margin-bottom:30px; border-bottom:1px solid #ccc;">

<input type="hidden" name="id" value="<?= $row['id'] ?>">

<label>Naslov:</label><br>
<input type="text" name="title" value="<?= $row['title'] ?>"><br><br>

<label>Kratki tekst:</label><br>
<textarea name="about"><?= $row['about'] ?></textarea><br><br>

<label>Cijeli tekst:</label><br>
<textarea name="content"><?= $row['content'] ?></textarea><br><br>

<label>Slika:</label><br>
<input type="file" name="pphoto"><br>
<img src="<?= UPLPATH . $row['image'] ?>" width="100"><br><br>

<label>Kategorija:</label><br>
<select name="category">
    <option value="kultura" <?= ($row['category']=="kultura")?"selected":"" ?>>Kultura</option>
    <option value="sport" <?= ($row['category']=="sport")?"selected":"" ?>>Sport</option>
</select><br><br>

<label>
<input type="checkbox" name="archive" <?= ($row['archive']==1)?"checked":"" ?>>
Arhiviraj
</label><br><br>

<button type="submit" name="update">Izmjeni</button>
<button type="submit" name="delete" onclick="return confirm('Sigurno obrisati?')">Izbriši</button>

</form>

<?php
    }

// USER (nije admin)
} else if (isset($_SESSION['username'])) {

    echo "<p>Bok ".$_SESSION['username']."! Nemaš administratorska prava.</p>";

// LOGIN
} else {
?>

<form method="POST">
<h2>Login</h2>

<?php if (isset($error)) echo "<p style='color:red;'>$error</p>"; ?>

<input type="text" name="username" placeholder="Korisničko ime" required><br><br>
<input type="password" name="lozinka" placeholder="Lozinka" required><br><br>
<button type="submit" name="prijava">Prijava</button>

</form>

<?php } ?>

</div>

</body>
</html>