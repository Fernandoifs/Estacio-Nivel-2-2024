CREATE TABLE bairro (
  idbairro INT IDENTITY(1,1) PRIMARY KEY,
  bairro VARCHAR(50) NULL,
  cidade INT
);

ALTER TABLE bairro
ADD CONSTRAINT FK_bairro_id_cid
FOREIGN KEY(cidade) REFERENCES cidade(idcidade)

--ALTER TABLE bairro ADD CONSTRAINT nome_length CHECK (CHAR_LENGTH(nome) >= 5);

INSERT INTO bairro (bairro,cidade) 
VALUES ('Cruzeiro',1),
	('Centro',1),
	('Centro',3);

SELECT * from bairro b 