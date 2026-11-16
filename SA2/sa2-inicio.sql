/* SA2 - Implementação e manipulação do banco de embalagens
   Aluno(a):
   Antes: execute o embalagens-base-sa2.sql. */
USE embalagens;

-- ETAPA 1: dados de teste (INSERT e UPDATE)
SHOW TABLES;
DESCRIBE ordem_producao;
INSERT INTO ordem_producao (data_ordem, qtd_planejada, qtd_boa, qtd_refugo, consumo_kg, unidade_codigo, produto_codigo)
VALUES 
(03/11/2026, 5000, 4800, 200, 60, 1, 1),
(03/11/2026, 5000, 4950, 50, 25, 1, 2),
(04/11/2026, 8000, 7650, 350, 160, 2, 3),
(05/11/2026, 3000, 2880, 120, 18, 3, 2),
(05/11/2026, 4000, 3900, 100, 48, 1, 1); 

-- ETAPA 2: consultas 1 a 5
SHOW TABLES;
DESCRIBE expedicao;
INSERT INTO expedicao (data_saida, unidade_codigo, cliente_cnpj)
VALUES 
('2026-11-06', 1, '11.111.111/0001-11'),
('2026-11-06', 2, '22.222.222/0001-22');
DESCRIBE item_expedicao;
INSERT INTO item_expedicao (expedicao_numero, produto_codigo, quantidade, preco_cobrado)
VALUES 
(1, 1, 2000, 0.45),
(1, 2, 2000, 0.12),
(2, 3, 5000, 0.65);

-- --- consulta de refugo----

CREATE OR REPLACE VIEW vw_refugo_produto AS
SELECT p.codigo,
       p.nome,
       COALESCE(SUM(o.qtd_refugo), 0) AS total_refugo
FROM produto p
LEFT JOIN ordem_producao o ON o.produto_codigo = p.codigo
GROUP BY p.codigo, p.nome;

-- ETAPA 3: view, procedure e trigger



DELIMITER $$

CREATE PROCEDURE sp_registrar_item (
  IN p_expedicao  INT,
  IN p_produto    INT,
  IN p_quantidade INT
)
BEGIN
  INSERT INTO item_expedicao (expedicao_numero, produto_codigo, quantidade, preco_cobrado)
  SELECT p_expedicao, codigo, p_quantidade, preco_tabela
  FROM produto
  WHERE codigo = p_produto;
  
END$$

DELIMITER ;


-- ETAPA 4: privilégios dos perfis e SHOW GRANTS




