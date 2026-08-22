<?php

require_once 'infra/conexao.php';

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
    $prioridade = $_post['prioridade'] ?? '';
}

if(empty(4id_usuario) || empty(descricao) || empty(setor) || empty(prioridade)) {
    $mensagem = "Todos os campos são obrigatórios.";
}else {
    if ($edicao) {
        
    }
}

?>