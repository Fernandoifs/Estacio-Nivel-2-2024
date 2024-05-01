CREATE TABLE logradouro (
  idlogradouro INT IDENTITY(1,1) PRIMARY KEY,
  logradouro VARCHAR(50) NULL,
  bairro INT
);

ALTER TABLE logradouro
ADD CONSTRAINT FK_logradouro_id_bai
FOREIGN KEY(bairro) REFERENCES bairro (idbairro)

INSERT INTO logradouro (logradouro,bairro) 
VALUES ('Av. Expedicionario Weber',2),
	('Rua Bela Uniao',1),
	('Rua Coronel Pacheco',3);



select *
from logradouro l 
