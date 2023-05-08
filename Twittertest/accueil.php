<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Twitter</title>

<body>
    <h1>Twitter</h1>
    <form method="POST">
        <label for="nom">Nom :</label>
        <input type="text" id="nom" name="nom">
        <label for="pseudo">Pseudo :</label>
        <input type="text" id="pseudo" name="pseudo">
        <label for="email">Email :</label>
        <input type="email" id="email" name="email">
        <label for="password">Mot de passe :</label>
        <input type="password" id="password" name="password">
        <label for="photo">Photo :</label>
        <input type="file" id="photo" name="photo">
   <button type="submit" name="submit">Créer un compte</button>   
 </form>
    <form action="explore.php" method="POST">
  <button type="submit">Connetion</button>
</form>
    <?php
if (isset($_POST['submit'])) {
try {
$bdd = new PDO('mysql:host=localhost;dbname=twitterdb;charset=utf8', 'root', '');
} catch(PDOExeption $error){
die("$error");
}
        
$nom = $_POST['nom'];
$pseudo = $_POST['pseudo'];
$email = $_POST['email'];
$password = $_POST['password'];
$photo = $_POST['photo'];
$insertion = $bdd->prepare("INSERT INTO utilisateurs (nom, pseudo, email, password, photo) VALUES (:nom, :pseudo, :email, :password, :photo)");
$insertion->execute(array('nom' => $nom, 'pseudo' => $pseudo, 'email' => $email,'password' => $password, 'photo' => $photo));
echo "<p>Votre compte a été créé avec succès !</p>";
    }
    ?>
</body>
</html>
