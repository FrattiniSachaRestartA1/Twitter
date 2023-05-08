<?php

try {
    $database = new PDO(
        "mysql:host=localhost;dbname=twitterdb",
        "root",
        ""
    );
} catch(PDOExeption $error){
    die("$error");
}

?>