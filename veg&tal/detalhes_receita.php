<!DOCTYPE html>
<html>

<head>
    <title>Veg&tal - Detalhes da receita</title>

    <form action="index.php" class="image-title">
        <input type="image" src="images/vegetal.png" alt="Logo do site" style="width: 320px; height: 120px;">
    </form>

    <link rel="stylesheet" type="text/css" href="css/styles.css">
</head>

<body>

    <div class="navbar">
        <a href="index.php">HOME</a>
        <a href="about.php">SOBRE NÓS</a>
        <a href="contact.php">CONTATO</a>
    </div>

    <div class="content">

        <div class="recipe">
            <h1>Detalhes da Receita</h1>

            <?php
            include "conexao.php";

            if (isset($_GET['id'])) {
                $id = $_GET['id'];
                $sql = "SELECT * FROM receitas WHERE id = $id";
                $result = $conn->query($sql);

                if ($result->num_rows > 0) {
                    $row = $result->fetch_assoc();

                    $titulo = $row["nome"];
                    $imagem = $row["image"];
                    $ingredientes = $row["ingredientes"];
                    $instrucoes = nl2br($row["instrucoes"]);

                    echo "<h2>$titulo</h2>";
                    echo "<img src='$imagem' alt='Imagem da Receita' style='width: 200px; height: 150px; border-radius: 15px;'><br>";
                    echo "<h3>Ingredientes:</h3>";
                    echo "<p>$ingredientes</p>";
                    echo "<h3>Instruções:</h3>";
                    echo "<p>$instrucoes";
                } else {
                    echo "Receita não encontrada.";
                }
            }



            $conn->close();
            ?>

        </div>



        <div class="returnbutton">
            <button onclick="goBack()" class="submit-button">Voltar à lista</button>

            <script>
                function goBack() {
                    window.history.back();
                }
            </script>
        </div>

        <form action="index.php" class="submit-button">
            <input type="submit" value="Voltar ao início">
        </form>

    </div>
</body>

</html>