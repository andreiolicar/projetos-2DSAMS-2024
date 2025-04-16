<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Página Dados Alunos</title>
    <link rel="stylesheet" href="style.css">
</head>

<body class="php-page">
    <div class="php-content">
        <h1>Dados do Aluno</h1>

        <?php
        echo "<p><strong>Nome:</strong> " . $_POST['txtnome'] . "</p>";
        echo "<p><strong>Telefone:</strong> " . $_POST['txttelefone'] . "</p>";
        echo "<p><strong>Curso:</strong> " . $_POST['cbocursos'] . "</p>";
        echo "<p><strong>RG:</strong> " . $_POST['txtRG'] . "</p>";
        echo "<p><strong>Módulo:</strong> " . $_POST['txtmodulo'] . "</p>";
        ?>
    </div>
</body>

</html>