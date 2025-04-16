<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ex01</title>
    <link rel="stylesheet" href="ex01.css">
</head>

<body>
<div class="container">
    <h1>Calculo de Consumo de Combustível</h1>

        <?php
            $area = $_POST['area'];
            $litros = $area / 6;

            echo"Você usará " . $litros . " litros de tinta." . "<br>";

            if ($litros < 18) {
                $latas = $litros / 3.6;
                $latasFinal = round($latas, 2);
                $preco = $latas * 25;
                $precoFinal = round($preco, 2);

                echo"Será utilizado " . $latasFinal . " latas de tinta de 3,6 litros." . "<br>";
                echo"Você gastará R$ " . $precoFinal;
            } else {
                $latas1 = $litros / 18;
                $latas1Final = round($latas1, 2);
                $preco1 = $latas1 * 80;
                $precoFinal1 = round($preco1, 2);

                $latas2 = $litros / 3.6;
                $latas2Final = round($latas2, 2);
                $preco2 = $latas2 * 25;
                $precoFinal2 = round($preco2, 2);

                echo"Será utilizado " . $latas1Final . " latas de tinta de 18 litros ou " . $latas2Final ." latas de tinta de 3,6 litros." . "<br>";
                echo"Se utilizar latas de tinta de 18 litros, você gastará R$ " . $precoFinal1 . "." . "<br>" . "Se utilizar latas de tinta de 3,6 litros, você gastará R$ " . $precoFinal2;
            }
        ?>
    </div>
</body>

</html>