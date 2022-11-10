<?php

include_once 'conexao.php';
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
        <i class="fas fa-plus"></i>
        </div>
        <div class="col"><h1>HPLANTS</h1></div>
        <div class="col">
        <input class="input" type="text" name="search" id="search" placeholder="faça sua busca" required>
        <i class="fas fa-search"></i>
        </div> 
    </header>

    <main  class="row">>
    <?php
    $sql = "SELECT * FROM especies";
    // executa o comando SQL no banco e retornar os dados
    $result_query = mysqli_query( $conexao, $sql );
    // laco de repeticao 
    while ( $row = mysqli_fetch_array($result_query, MYSQLI_ASSOC) ) 
    { 
      
    ?>
        <div class="card col-2 m-3" style="width: 18rem;">
            <img class="base1" src="./img/<?php echo $row['Foto']?>" class="card-img-top" alt="...">
            <div class="card-body">
              <a href="planta.php?id=<?php echo $row['EspecieID']?>" class="btn btn-primary"><?php echo $row['Nome']?></a>
            </div>
          </div>
    <?php
    }
    ?>
    </main>
    <footer class="row3">
      <p class="p1">Confira nossas redes sociais</p>
    </footer>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>