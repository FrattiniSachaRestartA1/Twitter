<div>
  <h2>Menu</h2>
  <form action="explore.php">
    <button type="submit">Explore</button>
  </form>
  <br>
  <form action="accueil.php">
    <button type="submit">Accueil</button>
  </form>
</div>


<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Twitter</title>
</head>
<body>
<h1>Twitter </h1>
    <form method="POST">
        <label for="tweet">Votre tweet :</label>
        <br>
        <textarea id="tweet" name="tweet" rows="4" cols="50"></textarea>
        <br>
        <button type="submit" name="submit">Publier</button>
    </form>
    <?php
    if (isset($_POST['submit'])) {
        $bdd = new PDO('mysql:host=localhost;dbname=twitterdb;charset=utf8', 'root', '');
        $insertion = $bdd->prepare("INSERT INTO tweets (contenu) VALUES (:contenu)");
        $insertion->execute(array('contenu' => $_POST['tweet']));
        echo "<p>Votre tweet a été publié avec succès !</p>";
    }
    ?>
</body>
</html>
