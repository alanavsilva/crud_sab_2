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
    titulo varchar(100) not null,
    descricao text not null,
    setor varchar(100) not null,
    prioridade enum('baixa', 'media', 'alta') not null,
    data_cadastro date not null,
    status enum('a fazer', 'fazendo', 'pronto') not null default 'a fazer',
    foreign key (id_usuario) references usuarios(id) on delete cascade
);