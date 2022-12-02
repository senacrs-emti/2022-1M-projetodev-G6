<?php
include_once 'conexao.php';
?>

    <main id="index" class="row">
    <?php

    // captura o texto digitado 
    $busca = $_GET['busca'];
    // comando sql que captura a informacao 
    $sql = "SELECT * FROM plantas WHERE Nome LIKE '%{$busca}%'";

    // executa o comando SQL no banco e retornar os dados
    $result_query = mysqli_query( $conexao, $sql );
    // laco de repeticao 
    while ( $row = mysqli_fetch_array($result_query, MYSQLI_ASSOC) ) 
    { 
      
    ?>
        <div class="card col-2 m-3" style="width: 18rem;">
            <img class="base1" src="./img/<?php echo $row['Imagem']?>" class="card-img-top" alt="...">
            <div class="card-body">
              <a href="planta.php?id=<?php echo $row['PlantaID']?>" class="btn btn-primary"><?php echo $row['Nome']?></a>
            </div>
          </div>
    <?php
    }
    ?>
    </main>
<?php 
include_once 'footer.php';
?>