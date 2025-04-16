<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cálculo de Salário</title>
    <link rel="stylesheet" href="style.css">
</head>

<body class="php-page">
<div class="php-content">
        <h1>Salário</h1>

        <?php
        $valor = $_POST['txtvalor'];
        $horas = $_POST['txthoras'];
        $salario = $valor * $horas;
        echo "<p><strong>Valor da Hora:</strong> R$" . $valor . "</p>";
        echo "<p><strong>Horas Trabalhadas:</strong> " . $horas . "</p>";
        echo "<p><strong>Salário Total:</strong> R$" . $salario . "</p>";
        ?>
    </div>
</body>

</html>