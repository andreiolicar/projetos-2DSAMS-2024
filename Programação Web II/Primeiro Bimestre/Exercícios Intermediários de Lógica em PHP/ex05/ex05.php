<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Soma dos Quadrados</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Montserrat:ital,wght@0,100..900;1,100..900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Sora:wght@100..800&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="ex05.css">
</head>

<body>
    <div class="container">
        <h1>Soma dos Quadrados</h1>

        <?php
        $num1 = $_POST['num1'];
        $num2 = $_POST['num2'];
        $num3 = $_POST['num3'];
        $somaQuad = pow($num1, 2) + pow($num2, 2) + pow($num3, 2);

        echo"A soma dos quadrados dos números é: " . $somaQuad ."!";
        ?>
    </div>
</body>

</html>