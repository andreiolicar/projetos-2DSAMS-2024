<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ação</title>
    <link rel="stylesheet" href="style.css">
</head>

<body class="php-page">
    <div class="php-content">
        <h1>Resultado do Formulário</h1>

        <?php
        $Vnome = $_POST['nome'];
        $Vidade = $_POST['idade'];

        echo "Olá, " . $Vnome . ".<br>" . "Você tem " . $Vidade . " anos!";
        ?>
    </div>
</body>

</html>