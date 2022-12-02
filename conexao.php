<?php
$servername = "localhost";
$database = "plantas";
$username = "root";
$password = "";
// Create connection
$conexao = mysqli_connect($servername, $username, $password, $database);
// Check connection
if (!$conexao) {
    die("Connection failed: " . mysqli_connect_error());
}
?>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="./style.css?v=<?php echo rand(0,999999);?>">
    <title>HPlants</title>
  </head>
  <body class="container-fluid">

  <header class="row">
        <div class="col">
        </div>
        <div class="col"><h1>HPLANTS</h1></div>
        <div class="col">
          <form action="busca.php" method="get">
            <input class="input" type="text" name="busca" id="search" placeholder="faça sua busca" required>
            <input type="submit"><i class="fas fa-search"></i></input>
          </form>
        </div> 
    </header>
