<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ex03</title>
    <link rel="stylesheet" href="ex03.css">
</head>

<body>
<div class="container">
    <h1>Calculo de Consumo de Combustível</h1>

        <?php
            $distancia = $_POST['distancia'];
            $combustivel = $_POST['combustivel'];
            $consumoMedio = $distancia / $combustivel;
            echo"Você percorreu " . $distancia . " Km e utilizou " . $combustivel . " litros de combustível." . "<br>";
            echo"O consumo médio de combustível é: " . $consumoMedio . " Km/litro.";
        ?>
    </div>
</body>

</html>