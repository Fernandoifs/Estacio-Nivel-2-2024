CREATE TABLE pessoafisica (
    idpessoafisica INT IDENTITY(1,1) PRIMARY KEY,
    idpessoa INT NOT NULL,
    cpf VARCHAR(20) NOT NULL,
);

ALTER TABLE pessoafisica
ADD CONSTRAINT FK_pessoafisica_id_pes
FOREIGN KEY (idpessoa) REFERENCES pessoa (idpessoa);

INSERT INTO dbo.pessoafisica (cpf,idpessoa)
VALUES 
	('99999999954',2),
	('23476511555',3),
	('12344486954',4);
 
SELECT *
from pessoafisica p 


