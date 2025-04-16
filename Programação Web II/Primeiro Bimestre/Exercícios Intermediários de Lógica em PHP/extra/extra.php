<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Campeonato de Futebol</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Montserrat:ital,wght@0,100..900;1,100..900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Sora:wght@100..800&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="extra.css">
</head>

<body>
    <div class="container">
        <h1>Campeonato de Futebol</h1>

        <?php
        $nome1 = $_POST['nome1'];
        $pontos1 = $_POST['pontos1'];
        $nome2 = $_POST['nome2'];
        $pontos2 = $_POST['pontos2'];
        $nome3 = $_POST['nome3'];
        $pontos3 = $_POST['pontos3'];
        $nome4 = $_POST['nome4'];
        $pontos4 = $_POST['pontos4'];

        $times = [
            ['nome' => $nome1, 'pontos' => $pontos1],
            ['nome' => $nome2, 'pontos' => $pontos2],
            ['nome' => $nome3, 'pontos' => $pontos3],
            ['nome' => $nome4, 'pontos' => $pontos4]
        ];

        usort($times, function ($a, $b) {
            return $b['pontos'] <=> $a['pontos'];
        });

        echo "Classificação do Campeonato";
        echo "<table border='1'>";
        echo "<thead><tr><th>Time</th><th>Pontos</th></tr></thead>";
        echo "<tbody>";

        foreach ($times as $time) {
            echo "<tr><td>{$time['nome']}</td><td>{$time['pontos']}</td></tr>";
        }

        echo "</tbody></table>";

        $campeao = $times[0]['nome'];
        $rebaixado = $times[3]['nome'];;
        echo "Campeão: " . $campeao . "<br>Rebaixado: " . $rebaixado;
        ?>
    </div>
</body>

</html>