<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="style.css">
<title>Unos</title>

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
    <a href="unos.html">Unos</a>
    </div>
</div>

<div class="container">
    

    
    <div class="header">
        <h2>Unos vijesti</h2>
        <p><?php echo date("l, d F"); ?></p>
    </div>



    <form action="skripta.php" method="POST" enctype="multipart/form-data">

    <div class="form-item">
        <label for="title">Naslov vijesti</label>
        <div class="form-field">
            <input type="text" name="title" class="form-field-textual">
        </div>
    </div>

    <div class="form-item">
        <label for="about">
            Kratki sadržaj vijesti (do 50 znakova)
        </label>
        <div class="form-field">
            <textarea name="about" id="" cols="30" rows="10" class="formfield-textual"></textarea>
        </div>
    </div>

    <div class="form-item">
        <label for="content">Sadržaj vijesti</label>
        <div class="form-field">
            <textarea name="content" id="" cols="30" rows="10" class="form-field-textual"></textarea>
        </div>
    </div>

    <div class="form-item">
        <label for="pphoto">Slika:</label>
        <div class="form-field">
            <input type="file" accept="image/jpg,image/gif" class="input-text" name="pphoto" />
        </div>
    </div>

    <div class="form-item">
        <label for="category">Kategorija vijesti</label>
        <div class="form-field">
            <select name="category" id="" class="form-field-textual">
                <option value="sport">Sport</option>
                <option value="kultura">Kultura</option>
            </select>
        </div>
    </div>

    <div class="form-item">
        <label>
            Spremiti u arhivu:
            <div class="form-field">
                <input type="checkbox" name="archive">
            </div>
        </label>
    </div>

    <div class="form-item">
        <button type="reset" value="Poništi">Poništi</button>
        <button type="submit" value="Prihvati">Prihvati</button>
    </div>

</form>

   
    
</div>

<div class="footer">
    <hr style="width:70%;color:grey;margin-bottom: 2%;">
   <p> <b>Copyright 2019 BBC.</b> The BBC is not responsible for the content of external sites. Read about our approach to external linking.</p>
</div>

</body>
</html>