create database db_Fruteira_do_Centro;
use db_Fruteira_do_centro;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null, 
ativo boolean not null,
primary key (id)
);

insert into tb_categoria (descricao, ativo) values ("Frutas", true);
insert into tb_categoria(descricao, ativo) values ("Verduras", true);
insert into tb_categoria(descricao, ativo) values ("Legumes", true);
insert into tb_categoria(descricao, ativo) values ("Sucos", true);
insert into tb_categoria(descricao, ativo) values ("Lácteos", true);

create table tb_produto (
id bigint auto_increment,
produto varchar (255) not null,
preco decimal(6,2) not null,
qtproduto int not null,
dtvencimento date,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produto (produto, preco, qtproduto, dtvencimento, categoria_id) values ("Banana", 8.90, 12, '2022-08-01', 1);
insert into tb_produto (produto, preco, qtproduto, dtvencimento, categoria_id) values ("Chandelle Chocolate", 69.99, 20, '2022-08-01', 5);
insert into tb_produto (produto, preco, qtproduto, dtvencimento, categoria_id) values ("Alface Americana", 3.70, 3, '2022-08-07', 2);
insert into tb_produto (produto, preco, qtproduto, dtvencimento, categoria_id) values ("Tomate", 6.00, 4, '2022-08-30', 3);
insert into tb_produto (produto, preco, qtproduto, dtvencimento, categoria_id) values ("Suco de Laranja 1L", 9.00, 2, '2022-09-25', 4);
insert into tb_produto (produto, preco, qtproduto, dtvencimento, categoria_id) values ("Maça", 10.00, 3, '2022-10-01', 1);
insert into tb_produto (produto, preco, qtproduto, dtvencimento, categoria_id) values ("Pepino", 4.00, 2, '2022-09-12', 3);
insert into tb_produto (produto, preco, qtproduto, dtvencimento, categoria_id) values ("Brócolis", 8.00, 6, '2022-09-05', 2);
insert into tb_produto (produto, preco, qtproduto, dtvencimento, categoria_id) values ("Alface Crespa", 2.00, 20, '2022-09-03', 2);
insert into tb_produto (produto, preco, qtproduto, dtvencimento, categoria_id) values ("Alface Lisa", 2.50, 30, '2022-09-06', 2); 
insert into tb_produto (produto, preco, qtproduto, dtvencimento, categoria_id) values ("Salada de frutas pronta", 12.00, 10, '2022-09-09', 6);
insert into tb_produto (produto, preco, qtproduto, dtvencimento, categoria_id) values ("Chuchu", 5.00, 6, '2022-09-06', 2);
insert into tb_produto (produto, preco, qtproduto, dtvencimento, categoria_id) values ("Mamão Formosa", 7.00, 9, '2022-09-20', 1);
insert into tb_produto (produto, preco, qtproduto, dtvencimento, categoria_id) values ("Abacate", 13.00, 20, '2022-09-05', 1);
insert into tb_produto (produto, preco, qtproduto, dtvencimento, categoria_id) values ("Pitaya", 24.00, 10, '2022-10-01', 1);
insert into tb_produto (produto, preco, qtproduto, dtvencimento, categoria_id) values ("Batata", 3.70, 150, '2022-09-22', 2);
insert into tb_produto (produto, preco, qtproduto, dtvencimento, categoria_id) values ("Cebola", 6.00, 80, '2022-09-04', 2);
insert into tb_produto (produto, preco, qtproduto, dtvencimento, categoria_id) values ("Pera", 8.00, 40, '2022-05-05', 1);
insert into tb_produto (produto, preco, qtproduto, dtvencimento, categoria_id) values ("Coco Seco", 15.00, 32, '2022-09-15', 1);
insert into tb_produto (produto, preco, qtproduto, dtvencimento, categoria_id) values ("Alfafa", 10.00, 18, '2022-04-05', 3);
insert into tb_produto (produto, preco, qtproduto, dtvencimento, categoria_id) values ("Couve", 3.00, 6, '2022-03-05', 3);
insert into tb_produto (produto, preco, qtproduto, dtvencimento, categoria_id) values ("Couve-Flor", 4.00, 6, '2022-03-08', 3);
insert into tb_produto (produto, preco, qtproduto, dtvencimento, categoria_id) values ("Abóbora", 3.00, 6, '2022-04-24', 3);

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where produto like "C%";

select tb_produto.produto, tb_produto.preco, tb_categoria.descricao from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select tb_produto.produto, tb_produto.preco, tb_categoria.descricao from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id and tb_categoria.descricao = "Legumes";

# Renato Barbosa
