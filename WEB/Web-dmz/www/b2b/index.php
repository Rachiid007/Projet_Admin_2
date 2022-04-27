<?php
//Connexion à la base de données
$mysqli = new mysqli("176.96.231.209:5000",'root','admin','web');

if ($mysqli -> connect_errno) {
  echo "Failed to connect to MySQL: " . $mysqli -> connect_error;
  exit();
}

?>

<html>

<head>
</head>

<body>
    <h1>Bienvenu sur le site B2B (revendeurs) de WoodyToys m1-5 !</h1>
 <!-- Parcouir la base de données -->
    <?php
        $query = "SELECT * FROM jouet;";
        mysqli_query($mysqli, $query) or die('Error querying database.');
        $result = mysqli_query($mysqli, $query);

        while ($row = mysqli_fetch_array($result)) {
            echo $row['id'] . ': ' . $row['nom'] . ' ' . $row['prix'] . ' <br />';
        }
    ?>

</body>

</html>
