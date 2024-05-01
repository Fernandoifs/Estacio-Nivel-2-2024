CREATE TABLE estado (
  idestado INT IDENTITY(1,1) PRIMARY KEY,
  estado VARCHAR(50)  NULL,
  sigla VARCHAR(2)  NULL,
);

INSERT INTO estado (estado, sigla)
VALUES
    ('Acre', 'AC'),
    ('Alagoas', 'AL'),
    ('Amap�', 'AP'),
    ('Amazonas', 'AM'),
    ('Bahia', 'BA'),
    ('Cear�', 'CE'),
    ('Distrito Federal', 'DF'),
    ('Esp�rito Santo', 'ES'),
    ('Goi�s', 'GO'),
    ('Maranh�o', 'MA'),
    ('Mato Grosso', 'MT'),
    ('Mato Grosso do Sul', 'MS'),
    ('Minas Gerais', 'MG'),
    ('Par�', 'PA'),
    ('Para�ba', 'PB'),
    ('Paran�', 'PR'),
    ('Pernambuco', 'PE'),
    ('Piau�', 'PI'),
    ('Rio de Janeiro', 'RJ'),
    ('Rio Grande do Norte', 'RN'),
    ('Rio Grande do Sul', 'RS'),
    ('Rond�nia', 'RO'),
    ('Roraima', 'RR'),
    ('Santa Catarina', 'SC'),
    ('S�o Paulo', 'SP'),
    ('Sergipe', 'SE'),
    ('Tocantins', 'TO');

   SELECT * FROM estado