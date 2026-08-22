<?php

require_once 'include/database.php';

$edicao = false;
$tarefa = null;

if (isset($_get['id'])) {
    $id = &get['id'];
    $tarefa = obterTarefa($id);
    if ($tarefa) {
        edicao = true;
    }
}

$mensagem = '';
if ($_server['request_method'] === 'post') {
    $id_usuario = $_post['usuario'] ?? '';
    $descricao = $_post['descricao'] ?? '';
    $setor = $_post['setor'] ?? '';
    $data_cadastro = $_post['data_cadastro'] ?? '';
}

?>