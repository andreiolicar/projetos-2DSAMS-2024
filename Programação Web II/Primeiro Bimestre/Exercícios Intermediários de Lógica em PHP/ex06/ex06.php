<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Calculo de Salário</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Montserrat:ital,wght@0,100..900;1,100..900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Sora:wght@100..800&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="ex06.css">
</head>

<body>
    <div class="container">
        <h1>Calculo de Salário</h1>

        <?php
        $nome = $_POST['nome'];
        $salarioBruto = $_POST['salarioBruto'];
        $gratificacao = ($salarioBruto * 10) / 100;
        $irpj = ($salarioBruto * 20) / 100;
        $salarioFinal = ($salarioBruto + $gratificacao) - $irpj;

        echo "Olá, " . $nome . "!" . "<br>" . "Seu salário bruto é R$ " . $salarioBruto . ", sua gratificação será R$ " . $gratificacao . " e você pagará R$ " . $irpj . " de imposto de renda, logo seu salário final será R$ " . $salarioFinal . ".";
        ?>
    </div>
</body>

</html>