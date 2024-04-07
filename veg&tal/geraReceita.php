<?php
include "conexao.php";

if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $sql = "SELECT * FROM receitas WHERE id = $id";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $titulo = $row["nome"];
        $template = file_get_contents("detalhes_receita.php");

        $template = str_replace("{TÍTULO DA RECEITA}", $row["nome"], $template);
        $template = str_replace("{IMAGEM}", $row["image"], $template);
        $template = str_replace("{INGREDIENTES}", $row["ingredientes"], $template);
        $template = str_replace("{INSTRUÇÕES}", nl2br($row["instrucoes"]), $template);

        echo $template;
    } else {
        echo "Receita não encontrada.";
    }
}

$conn->close();
