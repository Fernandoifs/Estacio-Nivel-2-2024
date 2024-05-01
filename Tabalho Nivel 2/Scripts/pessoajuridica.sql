CREATE TABLE pessoajuridica (
    idpessoajuridica INT IDENTITY(1,1) PRIMARY KEY,
    idpessoa INT,
    cnpj VARCHAR(20) NOT NULL,
);

ALTER TABLE pessoajuridica
ADD CONSTRAINT FK_pessoajuridica_id_pes
FOREIGN KEY (idpessoa) REFERENCES pessoa (idpessoa);

INSERT INTO dbo.pessoajuridica  (cnpj,idpessoa)
VALUES  ('12345678000190',1)

 SELECT *
 from pessoajuridica pej
 