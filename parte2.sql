INSERT INTO cliente (id_cliente, nome, endereço, celular, dt_nascimento) VALUES
(1, 'João Silva', 'Rua A, 123', 99887766, '1990-05-15'),
(2, 'Maria Santos', 'Av. B, 456', 98765432, '1985-10-20'),
(3, 'Pedro Oliveira', 'Rua C, 789', 91234567, '2000-03-08'),
(4, 'Ana Souza', 'Rua D, 321', 99998888, '1978-12-25'),
(5, 'Márcia Ferreira', 'Av. E, 654', 91122334, '1995-07-03'),
(6, 'José Pereira', 'Rua F, 987', 93336666, '1982-09-12'),
(7, 'Carla Costa', 'Rua G, 654', 97778899, '1998-11-30'),
(8, 'Ricardo Almeida', 'Av. H, 321', 94445555, '1970-02-18'),
(9, 'Sandra Oliveira', 'Rua I, 987', 95558877, '1987-06-22'),
(10, 'Fernando Santos', 'Av. J, 741', 93337788, '1993-04-14');

INSERT INTO produtos (id_produtos, preco, descricao, qt_estoque) VALUES
(1, 29.90, 'Camisa Polo', 100),
(2, 99.90, 'Tênis Esportivo', 50),
(3, 39.90, 'Calça Jeans', 80),
(4, 49.90, 'Bermuda de Moletom', 60),
(5, 79.90, 'Jaqueta de Couro', 30),
(6, 19.90, 'Meia Pacote com 5 pares', 200),
(7, 149.90, 'Bota de Couro', 20),
(8, 129.90, 'Blazer Social', 40),
(9, 59.90, 'Vestido Floral', 70),
(10, 89.90, 'Saia Midi', 90);

INSERT INTO pedidos (id_pedidos, n_pedido, dt_compra, v_total, dt_entrega, id_cliente) VALUES
(1, 1001, '2024-03-10', 149.80, '2024-03-15', 1),
(2, 1002, '2024-03-11', 119.80, '2024-03-16', 3),
(3, 1003, '2024-03-12', 69.90, '2024-03-17', 5),
(4, 1004, '2024-03-13', 39.90, '2024-03-18', 7),
(5, 1005, '2024-03-14', 209.70, '2024-03-19', 2),
(6, 1006, '2024-03-15', 299.40, '2024-03-20', 4),
(7, 1007, '2024-03-16', 149.90, '2024-03-21', 6),
(8, 1008, '2024-03-17', 269.50, '2024-03-22', 8),
(9, 1009, '2024-03-18', 129.90, '2024-03-23', 10),
(10, 1010, '2024-03-19', 179.80, '2024-03-24', 9);

INSERT INTO itens (id_itens, quantidade, v_unitario, v_total, id_produtos, id_pedidos) VALUES
(1, 2, 29.90, 59.80, 1, 1),
(2, 1, 99.90, 99.90, 2, 1),
(3, 1, 39.90, 39.90, 3, 2),
(4, 1, 19.90, 19.90, 6, 3),
(5, 3, 49.90, 149.70, 4, 4),
(6, 2, 79.90, 159.80, 5, 5),
(7, 1, 19.90, 19.90, 6, 5),
(8, 2, 149.90, 299.80, 7, 6),
(9, 1, 129.90, 129.90, 8, 7),
(10, 1, 59.90, 59.90, 9, 8);

-- Atualizar registros
UPDATE cliente SET celular = 99887755 WHERE id_cliente = 1;
UPDATE produtos SET qt_estoque = 120 WHERE id_produtos = 1;

-- Excluir registros
DELETE FROM itens WHERE id_itens = 10;
DELETE FROM pedidos WHERE id_pedidos = 10;