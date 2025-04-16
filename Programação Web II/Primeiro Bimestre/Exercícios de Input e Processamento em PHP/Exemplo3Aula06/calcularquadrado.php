<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cálculo de Quadrados</title>
    <link rel="stylesheet" href="style.css">
</head>

<body class="php-page">

<div class="php-content">
        <h1>Resultado do Cálculo</h1>

        <?php
        $A = $_POST['txta'];
        $B = $_POST['txtb'];
        $soma = $A + $B;
        $quadr = pow($soma, 2);
        echo "<p><strong>Valor de A:</strong> " . $A . "</p>";
        echo "<p><strong>Valor de B:</strong> " . $B . "</p>";
        echo "<p><strong>Soma dos Valores:</strong> " . $soma . "</p>";
        echo "<p><strong>Quadrado da Soma:</strong> " . $quadr . "</p>";
        ?>
    </div>

</body>

</html>