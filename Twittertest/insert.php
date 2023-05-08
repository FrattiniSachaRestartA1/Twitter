<?php
    if(isset($_POST['envoyer'])) {
        $contenu = $_POST['contenu'];

        require 'template/database.php';
        $insert = $database->prepare("INSERT INTO contenu (contenu) VALUES (:contenu) ");
        $insert->execute(["contenu" => $contenu]);
    }
?>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Mon formulaire</title>
    </head>
    <body>
        <form action="" method="POST">
            <label for="contenu">Contenu :</label>
            <textarea name="contenu" id="contenu"></textarea>
            <br>
            <button type="submit" name="envoyer">Envoyer</button>
        </form>

<?php
$query = $database->query("SELECT * FROM contenu ORDER BY id DESC");
$contenus = $query->fetchAll(PDO::FETCH_ASSOC);
foreach($contenus as $contenu) {
echo "<li>" . $contenu['contenu'] . "</li>";
}
?>
</body>
</html>
