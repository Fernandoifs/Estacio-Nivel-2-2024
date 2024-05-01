CREATE TABLE pessoa (
    idpessoa INT IDENTITY(1,1) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(40),
    tipo VARCHAR(1) NOT NULL,
  	estado INT,
	cidade INT,
	bairro INT,
	logradouro INT,
	cep INT,
);

ALTER TABLE pessoa
ADD CONSTRAINT FK_pessoa_id_est
FOREIGN KEY (estado) REFERENCES estado (idestado);

----------------------------------------------------------
ALTER TABLE pessoa
ADD CONSTRAINT FK_pessoa_id_cid
FOREIGN KEY(cidade) REFERENCES cidade  (idcidade);

----------------------------------------------------------
ALTER TABLE pessoa
ADD CONSTRAINT FK_pessoa_id_bai
FOREIGN KEY(bairro) REFERENCES bairro (idbairro);

----------------------------------------------------------
ALTER TABLE pessoa
ADD CONSTRAINT FK_pessoa_pes_log
FOREIGN KEY(logradouro) REFERENCES logradouro (idlogradouro);

----------------------------------------------------------
ALTER TABLE pessoa
ADD CONSTRAINT FK_pessoa_pes_cep
FOREIGN KEY(cep) REFERENCES cep (idcep);

----------------------------------------------------------

INSERT INTO pessoa (nome,telefone,email,tipo,estado,cidade,	bairro, logradouro, cep)
VALUES
('JJC', '35127845','fruteirajjc@gmail.com','J',21,3,3,3,3),
('Joao', '998965214','joaopedro@gmail.com','F',21,1,1,1,1),
('Ana Paula', '999111222', 'anapaula@gmail.com','F',21,1,1,1,1),
('Carlos', '888222333', 'carlos@bol.com','F',21,1,2,2,2);

SELECT *
from pessoa p 



