CREATE TABLE produto (
  idproduto INT IDENTITY(1,1) PRIMARY KEY,
  produto VARCHAR(20) NOT NULL  ,
  estoque INT NOT NULL,
  preco Decimal (10,2) NOT NULL,
);


INSERT INTO produto (produto, estoque, preco)
VALUES
    ('banana', 100, 5.00), 
    ('maçã', 400, 2.00),
    ('laranja', 800, 4.00);

SELECT *
from produto p 