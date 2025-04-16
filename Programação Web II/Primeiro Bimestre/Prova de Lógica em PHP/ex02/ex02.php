<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ex02</title>
    <link rel="stylesheet" href="ex02.css">
</head>

<body>
    <div class="container">
    <h1>Calculo de Parcelas</h1>

        <?php
            $produto = $_POST['valProduto'];
            $acrescimo = ($produto * 16) / 100;
            $valFinal = $produto + $acrescimo;
            $valParcela = $valFinal / 10;
            echo"O valor de cada parcela será: R$ " . $valParcela . " em 10 parcelas!" . "<br>" . "O preço total do produto com acréscimo será: R$ " . $valFinal;
        ?>
    </div>
</body>

</html>