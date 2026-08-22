create database kanban_db;
use kanban_db;

create table usuarios (
    id int auto_increment primary key,
    nome varchar(100) not null,
    email varchar(100) not null
);

create table tarefas (
    id int auto_increment primary key, 
    id_usuario int not null,
    descricao text not null,
    setor varchar(100) not null,
    prioridade enum('baixa', 'media', 'alta') not null,
    data_cadastro date not null,
    status enum('a fazer', 'fazendo', 'pronto') not null default 'a fazer',
    foreign key (id_usuario) references usuarios(id) on delete cascade
);

insert into usuarios (nome, email) values
('João Silva', 'joao@exemplo.com'),
('Maria Santos', 'maria@exemplo.com'),
('Pedro Oliveira', 'pedro@exemplo.com');

insert into tarefas (id_usuario, descricao, setor, prioridade, data_cadastro, status) values
(1, 'Revisar relatório de vendas', 'Comercial', 'alta', curdate(), 'a fazer'),
(1, 'Atualizar planilha de custos', 'Financeiro', 'media', curdate(), 'fazendo'),
(2, 'Preparar apresentação para cliente', 'Marketing', 'alta', curdate(), 'a fazer'),
(3, 'Verificar estoque de matéria-prima', 'Produção', 'baixa', curdate(), 'pronto'),
(2, 'Agendar reunião com forncedores', 'compras', 'media', curdate(), 'fazendo');