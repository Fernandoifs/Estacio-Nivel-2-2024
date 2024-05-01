CREATE TABLE negociacao (
  idnegociacao INT IDENTITY(1,1) PRIMARY KEY,
  tipo VARCHAR(10) NOT NULL,
  valorUnitario NUMERIC (10,2) NOT NULL,
  usuario INT,
  produto INT,
  pessoa INT,
  quantidade INT	
);

----------------------------------------------------------
ALTER TABLE negociacao
ADD CONSTRAINT FK_negociacao_id_usu
FOREIGN KEY (usuario) REFERENCES usuario (idusuario);

----------------------------------------------------------
ALTER TABLE negociacao
ADD CONSTRAINT FK_negociacao_id_pro
FOREIGN KEY (produto) REFERENCES produto (idproduto);

----------------------------------------------------------
ALTER TABLE negociacao
ADD CONSTRAINT FK_negociacao_id_pes
FOREIGN KEY (pessoa) REFERENCES pessoa (idpessoa);

----------------------------------------------------------

INSERT INTO negociacao (tipo,valorUnitario,usuario,produto,pessoa,quantidade)
VALUES
	('V',4,1,1,2,20),
	('V',2,1,3,2,24),
	('V',3,2,3,3,14),
	('C',51,2,4,15),
	('C',4,1,2,4,27);

select * 
from negociacao n 

