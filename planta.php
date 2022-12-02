<?php
include_once 'conexao.php';

// captura o id 
$id = $_GET['id'];
// comando sql que captura a informacao 
$sql = "SELECT * FROM plantas WHERE PlantaID = {$id}";
// executa o comando SQL no banco e retornar os dados
$result_query = mysqli_query( $conexao, $sql );
// laco de repeticao 
$dados = mysqli_fetch_array($result_query, MYSQLI_ASSOC);
?>


    <main id="plantas" class="row">
        <div class="col-3">
            <img src="./img/<?php echo $dados['Imagem']?>" alt="" class="imagem" ">
        </div>
        <div class="col-9">
            <h2 class="nomeplanta"><?php echo $dados['Nome']?></h2>
            <h4>como cuidar?</h4>
            <p class="paragrafo"><?php echo $dados['Cuidados']?></p>
        </div>

    </main>
<?php 
include_once 'footer.php';
?>