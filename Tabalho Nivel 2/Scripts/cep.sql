CREATE TABLE cep (
  idcep INT IDENTITY(1,1) PRIMARY KEY,
  cep INT NOT NULL,
  logradouro INT
);


ALTER TABLE cep
ADD CONSTRAINT FK_cep_id_log
FOREIGN KEY(logradouro) REFERENCES logradouro (idlogradouro)

INSERT INTO cep (cep,logradouro)
VALUES ('98900000',1),
	('98785200',2),
	('95560975',3);

SELECT * from cep c 