CREATE TABLE cidade (
  idcidade INT IDENTITY(1,1) PRIMARY KEY,
  cidade VARCHAR(50)  NULL,
  estado INT
);

ALTER TABLE cidade
ADD CONSTRAINT FK_cidade_id_est
FOREIGN KEY(estado) REFERENCES estado(idestado)

INSERT INTO cidade (cidade,estado) 
VALUES 
	('Santa Rosa',1),
	('Alegrete',1),
	('Torres',1);


SELECT * from cidade c 