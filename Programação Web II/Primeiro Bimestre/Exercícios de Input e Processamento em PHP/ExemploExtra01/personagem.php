<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Seu Personagem</title>
    <link rel="stylesheet" href="style.css">
</head>

<body class="php-page">
    <div class="php-content">
        <h1>Seu Personagem Criado!</h1>

        <?php
        echo "<p><strong>Nome:</strong> " . $_POST['nome'] . "</p>";
        echo "<p><strong>Cor do Cabelo:</strong> " . $_POST['cor_cabelo'] . "</p>";
        echo "<p><strong>Estilo do Cabelo:</strong> " . $_POST['estilo_cabelo'] . "</p>";
        echo "<p><strong>Acessórios:</strong> " . implode(", ", $_POST['acessorio']) . "</p>";
        ?>
    </div>
</body>

</html>