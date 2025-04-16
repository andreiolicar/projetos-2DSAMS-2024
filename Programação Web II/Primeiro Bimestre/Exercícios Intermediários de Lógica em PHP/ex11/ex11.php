<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Calculadora Numérica</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Montserrat:ital,wght@0,100..900;1,100..900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Sora:wght@100..800&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="ex11.css">
</head>

<body>
    <div class="container">
        <h1>Calculadora Numérica</h1>

        <?php
        $num1 = $_POST['num1'];
        $num2 = $_POST['num2'];
        $operador = $_POST['operador'];
        $resultado = 0;

        switch ($operador) {
            case 'soma':
                $resultado = $num1 + $num2;
                echo "A soma entre os números " . $num1 . " e " . $num2 . " é igual a " . $resultado . ".";
                break;
            case 'sub':
                $resultado = $num1 - $num2;
                echo "A subtração entre os números " . $num1 . " e " . $num2 . " é igual a " . $resultado . ".";
                break;
            case 'mult':
                $resultado = $num1 * $num2;
                echo "A multiplicação entre os números " . $num1 . " e " . $num2 . " é igual a " . $resultado . ".";
                break;
            case 'div':
                $resultado = $num1 / $num2;
                echo "A divisão entre os números " . $num1 . " e " . $num2 . " é igual a " . $resultado . ".";
                break;
        }
        ?>
    </div>
</body>

</html>