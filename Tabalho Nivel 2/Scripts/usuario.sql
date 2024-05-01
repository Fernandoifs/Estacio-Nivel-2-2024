CREATE TABLE usuario (
    idusuario INT IDENTITY(1,1) PRIMARY KEY,
    login VARCHAR(50) NOT NULL,
	senha VARCHAR(25) NOT NULL,
);

INSERT INTO usuario (login, senha)
VALUES ('op1', 'op1'),
	('op2', 'op2'),
	('op3', 'op3');


SELECT *
FROM usuario u

