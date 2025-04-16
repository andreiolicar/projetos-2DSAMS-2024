<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Aprovação de Alunos</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Montserrat:ital,wght@0,100..900;1,100..900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Sora:wght@100..800&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="ex03.css">
</head>

<body>
    <div class="container">
        <h1>Aprovação de Alunos</h1>

        <?php
        $nome = $_POST['nome'];
        $nota1 = $_POST['nota1'];
        $nota2 = $_POST['nota2'];
        $nota3 = $_POST['nota3'];
        $nota4 = $_POST['nota4'];
        $notaFinal = ($nota1 + $nota2 + $nota3 + $nota4) / 4;

        echo "Olá, " . $nome . "! " . "<br>";

        if ($notaFinal >= 5) {
            echo "Sua média de notas foi: " . $notaFinal . "! Você foi aprovado.";
        } else {
            echo "Sua média de notas foi: " . $notaFinal . "! Você foi reprovado.";
        };
        ?>
    </div>
</body>

</html>