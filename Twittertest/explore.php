<div>
  <h2>Menu</h2>
  <form action="profil.php">
    <button type="submit">Profil</button>
  </form>
  <br>
  <form action="accueil.php">
    <button type="submit">Accueil</button>
  </form>
</div>
<?php
try {
    $bdd = new PDO('mysql:host=localhost;dbname=twitterdb;charset=utf8', 'root', '');
}catch(PDOExeption $error){
    die("$error");
}

if (isset($_POST['submit'])) {
    $contenu = $_POST['tweet'];
    $insertion = $bdd->prepare("INSERT INTO tweets (contenu) VALUES (:contenu)");
    $insertion->execute(array('contenu' => $contenu));
}

$requete = $bdd->query("SELECT * FROM tweets ORDER BY date_creation DESC");
$tweets = $requete->fetchAll(PDO::FETCH_ASSOC);
?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Twitter</title>
    <style>
.tweet {
border: 1px solid black;
padding: 10px;
margin-bottom: 20px;
text-align: center;
}
    </style>
</head>
<body>
<h1>Twitter </h1>
<form method="POST">
     <label for="tweet">Votre tweet :</label>
<br>
    <textarea id="tweet" name="tweet" rows="4" cols="50"></textarea>
     <br>
        <button type="submit" name="submit">Envoyer</button>
</form>
<?php foreach ($tweets as $tweet): ?>
    <div class='tweet'>
     <p><?= $tweet['contenu'] ?></p>
        <p><?= $tweet['date_creation'] ?></p>
    </div>
<?php endforeach; ?>
</body>
</html>

