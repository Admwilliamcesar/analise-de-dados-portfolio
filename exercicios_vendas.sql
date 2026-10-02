-- 1. Criação da tabela de vendas
CREATE TABLE vendas (
    id_venda INT,
    cliente VARCHAR(50),
    produto VARCHAR(50),
    valor DECIMAL(10,2),
    data_venda DATE
);

-- 2. Inserção dos dados de vendas
INSERT INTO vendas VALUES
(1, 'Ana Silva', 'Notebook', 3500.00, '2026-03-10'),
(2, 'Bruno Souza', 'Mouse', 80.00, '2026-03-11'),
(3, 'Carla Dias', 'Teclado', 150.00, '2026-03-12'),
(4, 'Diego Lima', 'Monitor', 900.00, '2026-03-15'),
(5, 'Ana Silva', 'Cadeira Gamer', 1200.00, '2026-03-18');

-- 3. Análise Descritiva: Faturamento Total
SELECT SUM(valor) AS faturamento_total 
FROM vendas;

-- 4. Análise Diagnóstica: Clientes com compras acima de R$ 500
SELECT cliente, produto, valor 
FROM vendas 
WHERE valor > 500;

-- 5. Análise Descritiva: Total de compras por cliente
SELECT cliente, COUNT(*) AS total_compras 
FROM vendas 
GROUP BY cliente;
