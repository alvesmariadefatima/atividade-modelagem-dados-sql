CREATE TABLE Exercicio01 (
    ID_NF int,
    ID_ITEM int,
    COD_PROD int,
    VALOR_UNIT decimal,
    QTD int,
    DESCONTO int,
    VALOR_VENDIDO decimal,
    -- Remova VALOR_TOTAL daqui
    VALOR_TOTAL decimal
);

INSERT INTO Exercicio01 (ID_NF, ID_ITEM, COD_PROD, VALOR_UNIT, VALOR_TOTAL, DESCONTO, VALOR_VENDIDO, VALOR_TOTAL) VALUES
(1, 1, 1, 25.00, 10, 5),
(1, 2, 2, 13.50, 3, NULL),
(1, 3, 3, 15.00, 2, NULL),
(1, 4, 4, 10.00, 1, NULL),
(1, 5, 5, 30.00, 1, NULL),
(2, 1, 3, 15.00, 4, NULL),
(2, 2, 4, 20.00, 5, NULL),
(2, 3, 5, 30.00, 7, NULL),
(3, 1, 1, 25.00, 5, NULL),
(3, 2, 4, 10.00, 4, NULL),
(3, 4, 5, 30.00, 5, NULL),
(3, 4, 2, 13.50, 7, NULL),
(4, 1, 5, 30.00, 10, 15),
(4, 2, 4, 10.00, 12, 5),
(4, 3, 1, 25.00, 13, 5),
(4, 3, 1, 25.00, 13, 5),
(4, 4, 2, 13.50, 15, 5),
(5, 1, 3, 15.00, 3, NULL),
(5, 2, 5, 30.00, 6, NULL),
(6, 1, 1, 25.00, 22, 15),
(6, 2, 3, 15.00, 25, 20),
(7, 1, 1, 25.00, 10, 3),
(7, 2, 2, 13.50, 10, 4),
(7, 3, 3, 15.00, 10, 4),
(7, 4, 5, 30.00, 10, 1),

CREATE TABLE Exercicio01 (
    ID_NF int,
    ID_ITEM int,
    COD_PROD int,
    VALOR_UNIT decimal,
    QTD int,
    DESCONTO int,
    VALOR_VENDIDO decimal,
    -- Remova VALOR_TOTAL daqui
    VALOR_TOTAL decimal
);

INSERT INTO Exercicio01 (ID_NF, ID_ITEM, COD_PROD, VALOR_UNIT, VALOR_TOTAL, DESCONTO, VALOR_VENDIDO, VALOR_TOTAL) VALUES
(1, 1, 1, 25.00, 10, 5),
(1, 2, 2, 13.50, 3, NULL),
(1, 3, 3, 15.00, 2, NULL),
(1, 4, 4, 10.00, 1, NULL),
(1, 5, 5, 30.00, 1, NULL),
(2, 1, 3, 15.00, 4, NULL),
(2, 2, 4, 20.00, 5, NULL),
(2, 3, 5, 30.00, 7, NULL),
(3, 1, 1, 25.00, 5, NULL),
(3, 2, 4, 10.00, 4, NULL),
(3, 4, 5, 30.00, 5, NULL),
(3, 4, 2, 13.50, 7, NULL),
(4, 1, 5, 30.00, 10, 15),
(4, 2, 4, 10.00, 12, 5),
(4, 3, 1, 25.00, 13, 5),
(4, 3, 1, 25.00, 13, 5),
(4, 4, 2, 13.50, 15, 5),
(5, 1, 3, 15.00, 3, NULL),
(5, 2, 5, 30.00, 6, NULL),
(6, 1, 1, 25.00, 22, 15),
(6, 2, 3, 15.00, 25, 20),
(7, 1, 1, 25.00, 10, 3),
(7, 2, 2, 13.50, 10, 4),
(7, 3, 3, 15.00, 10, 4),
(7, 4, 5, 30.00, 10, 1),

-- Consulta para obter os resultados desejados
SELECT
    COD_PROD,
    MIN(COALESCE(desconto, 0)) AS MENOR,
    MAX(COALESCE(desconto, 0)) AS MAIOR,
    AVG(COALESCE(desconto, 0)) AS MEDIA
FROM Exercicio01
GROUP BY COD_PROD;

-- Consulta para obter os resultados desejados
SELECT
    COD_PROD,
    AVG(COALESCE(desconto, 0)) AS MEDIA
FROM Exercicio01
GROUP BY COD_PROD;

-- Consulta para obter os resultados desejados
SELECT
    ID_NF,
    SUM(QTD * VALOR_UNIT) AS VALOR_TOT
FROM Exercicio01
GROUP BY ID_NF
HAVING SUM(QTD * VALOR_UNIT) > 500
ORDER BY VALOR_TOT DESC;

-- Atualizar desconto para zero onde é nulo
UPDATE Exercicio01
SET desconto = 0
WHERE desconto IS NULL;

-- Consulta para obter os resultados desejados
SELECT
    ID_NF,
    COD_PROD,
    SUM(QTD) AS QUANTIDADE
FROM Exercicio01
GROUP BY ID_NF, COD_PROD
HAVING SUM(QTD) > 10;

SELECT
    COD_PROD,
    SUM(QTD) AS QUANTIDADE
FROM Exercicio01
GROUP BY COD_PROD
ORDER BY QUANTIDADE DESC
LIMIT 1;

-- Consulta para obter os resultados desejados
SELECT
    ID_NF,
    SUM(QTD * VALOR_UNIT) AS VALOR_TOTAL
FROM Exercicio01
GROUP BY ID_NF
ORDER BY VALOR_TOTAL DESC;

-- Atualizar desconto para zero onde é nulo
UPDATE Exercicio01
SET desconto = 0
WHERE desconto IS NULL;

-- Consulta para obter os resultados desejados
SELECT
    ID_NF,
    SUM(VALOR_UNIT - (VALOR_UNIT * COALESCE(desconto, 0) / 100)) AS VALOR_VENDIDO
FROM Exercicio01
GROUP BY ID_NF
ORDER BY VALOR_VENDIDO DESC;

-- Consulta para obter os resultados desejados
SELECT
    ID_NF,
    SUM(QTD * VALOR_UNIT) AS VALOR_TOTAL
FROM Exercicio01
GROUP BY ID_NF
ORDER BY VALOR_TOTAL DESC;

-- Atualizar desconto para zero onde é nulo
UPDATE Exercicio01
SET desconto = 0
WHERE desconto IS NULL;

-- Consulta para obter os resultados desejados
SELECT
    id_inf,
    id_item,
    cod_prod,
    valor_unit,
    qtd * valor_unit AS valor_total,
    desconto,
    valor_unit - (valor_unit * COALESCE(desconto, 0) / 100) AS valor_vendido
FROM Exercicio01;


SELECT * FROM Exercicio01 WHERE desconto IS NULL;

-- SELECT id_item, (valor_unit * qtd - COALESCE(desconto, 0)) AS total FROM Exercicio01;

SELECT id_inf, id_item, cod_prod, valor_unit
FROM Exercicio01
WHERE desconto IS NULL;

ALTER TABLE Exercicio01
ALTER COLUMN valor_unit decimal(10, 2);

SELECT
    id_inf,
    id_item,
    cod_prod,
    valor_unit,
    (valor_unit - (valor_unit * COALESCE(desconto, 0) / 100)) AS valor_vendido
FROM Exercicio01
WHERE desconto IS NOT NULL;
-- Consulta para obter os resultados desejados
SELECT
    COD_PROD,
    MIN(COALESCE(desconto, 0)) AS MENOR,
    MAX(COALESCE(desconto, 0)) AS MAIOR,
    AVG(COALESCE(desconto, 0)) AS MEDIA
FROM Exercicio01
GROUP BY COD_PROD;

-- Consulta para obter os resultados desejados
SELECT
    COD_PROD,
    AVG(COALESCE(desconto, 0)) AS MEDIA
FROM Exercicio01
GROUP BY COD_PROD;

-- Consulta para obter os resultados desejados
SELECT
    ID_NF,
    SUM(QTD * VALOR_UNIT) AS VALOR_TOT
FROM Exercicio01
GROUP BY ID_NF
HAVING SUM(QTD * VALOR_UNIT) > 500
ORDER BY VALOR_TOT DESC;

-- Atualizar desconto para zero onde é nulo
UPDATE Exercicio01
SET desconto = 0
WHERE desconto IS NULL;

-- Consulta para obter os resultados desejados
SELECT
    ID_NF,
    COD_PROD,
    SUM(QTD) AS QUANTIDADE
FROM Exercicio01
GROUP BY ID_NF, COD_PROD
HAVING SUM(QTD) > 10;

SELECT
    COD_PROD,
    SUM(QTD) AS QUANTIDADE
FROM Exercicio01
GROUP BY COD_PROD
ORDER BY QUANTIDADE DESC
LIMIT 1;

-- Consulta para obter os resultados desejados
SELECT
    ID_NF,
    SUM(QTD * VALOR_UNIT) AS VALOR_TOTAL
FROM Exercicio01
GROUP BY ID_NF
ORDER BY VALOR_TOTAL DESC;

-- Atualizar desconto para zero onde é nulo
UPDATE Exercicio01
SET desconto = 0
WHERE desconto IS NULL;

-- Consulta para obter os resultados desejados
SELECT
    ID_NF,
    SUM(VALOR_UNIT - (VALOR_UNIT * COALESCE(desconto, 0) / 100)) AS VALOR_VENDIDO
FROM Exercicio01
GROUP BY ID_NF
ORDER BY VALOR_VENDIDO DESC;

-- Consulta para obter os resultados desejados
SELECT
    ID_NF,
    SUM(QTD * VALOR_UNIT) AS VALOR_TOTAL
FROM Exercicio01
GROUP BY ID_NF
ORDER BY VALOR_TOTAL DESC;

-- Atualizar desconto para zero onde é nulo
UPDATE Exercicio01
SET desconto = 0
WHERE desconto IS NULL;

-- Consulta para obter os resultados desejados
SELECT
    id_inf,
    id_item,
    cod_prod,
    valor_unit,
    qtd * valor_unit AS valor_total,
    desconto,
    valor_unit - (valor_unit * COALESCE(desconto, 0) / 100) AS valor_vendido
FROM Exercicio01;


SELECT * FROM Exercicio01 WHERE desconto IS NULL;

-- SELECT id_item, (valor_unit * qtd - COALESCE(desconto, 0)) AS total FROM Exercicio01;

SELECT id_inf, id_item, cod_prod, valor_unit
FROM Exercicio01
WHERE desconto IS NULL;

ALTER TABLE Exercicio01
ALTER COLUMN valor_unit decimal(10, 2);

SELECT
    id_inf,
    id_item,
    cod_prod,
    valor_unit,
    (valor_unit - (valor_unit * COALESCE(desconto, 0) / 100)) AS valor_vendido
FROM Exercicio01
WHERE desconto IS NOT NULL;