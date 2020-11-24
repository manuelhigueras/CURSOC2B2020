
-- consulta a dos tablas
-- Iban saldo y nombre apellidos del ciente de todas las cuentas

SELECT CB.IBAN, CB.SALDO, C.NOMBRE, C.APELLIDOS
FROM CUENTAS_BANCARIAS CB , CLIENTES  C
WHERE CB.ID_CLIENTE = C.ID_CLIENTE
ORDER BY SALDO, IBAN;


-- CAMBIO NOMBRE,APELLIDOS DEL CLIENTE ID 1
SELECT *  FROM CLIENTES C WHERE C.ID_CLIENTE = 1;
-- antes Laura Blando
-- nuevo Lauras Modificado

UPDATE CLIENTES
SET NOMBRE = 'Lauras', APELLIDOS = 'Modificado'
WHERE ID_CLIENTE = 1;

-- CONSULTAR LAS CUENTAS CON SALDO SUPERIOR A 1000 Y SALDO INFERIOR A 10000
SELECT IBAN, SALDO
FROM CUENTAS_BANCARIAS
WHERE SALDO >= 1000 AND SALDO <= 10000;

--ALIAS DE COLUMNA

SELECT  ID_CLIENTE AS  NUMERO_CLIENTE,
        NOMBRE || ' '  || APELLIDOS AS NOMBRE_APELLIDO_CLIENTE
FROM CLIENTES;

SELECT SALDO + 1000 AS SALDO_MEJORADO
FROM CUENTAS_BANCARIAS;


SELECT * FROM APP.BANCOS;
SELECT * FROM BANCOS;

-- ¿QUÉ CLIENTES TIENEN CUENTAS BANCARIAS?

SELECT DISTINCT C.NOMBRE, C.APELLIDOS
FROM CUENTAS_BANCARIAS CB , CLIENTES  C
WHERE CB.ID_CLIENTE = C.ID_CLIENTE ;


