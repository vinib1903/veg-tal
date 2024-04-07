<!DOCTYPE html>
<html>

<head>
    <title>Veg&tal - Culinária Vegana</title>

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

    <div class="text"><h1>Culinária Vegana</h1></div>



        <div class="food-table">


            <?php
            include "conexao.php";

            $sql = "SELECT * FROM receitas WHERE tipo = 'Vegana' ORDER BY nome";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {


                echo "<table>";
                echo "<tr><th>Imagem</th><th>Nome</th><th>Link da Receita</th></tr>";
                while ($row = $result->fetch_assoc()) {
                    echo "<tr>";
                    echo "<td style='text-align: center;'><a href='" . $row["image"] . "' target='_blank'><img src='" . $row["image"] . "' alt='Imagem da Receita' style='width: 150px; height: 100px; border-radius: 15px;'></a></td>";
                    echo "<td style='width=260px; text-align: center;'>" . $row["nome"] . "</td>";
                    echo "<td style='text-align: center; text-decoration: none;'><a href='" . $row["link"] . "'>Ver Receita</a></td>";
                    echo "</tr>";
                }
                echo "</table>";
            }
            echo "</table>";

            $conn->close();
            ?>

        </div>


        <form action="index.php" class="submit-button">
            <input type="submit" value="Voltar ao início">
        </form>

    </div>
</body>

</html>