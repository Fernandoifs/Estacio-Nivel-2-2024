--dados pessoa fisica
SELECT pes.nome, pef.cpf,pes.telefone,pes.email,est.estado,cid.cidade,bai.bairro,log.logradouro,cep.cep
  FROM pessoafisica pef
  INNER JOIN dbo.pessoa pes on (pes.idpessoa = pef.idpessoa and pes.tipo = 'F')
  LEFT JOIN dbo.estado est on (est.idestado = pes.estado)
  LEFT JOIN dbo.cidade cid on (cid.idcidade = pes.cidade)
  LEFT JOIN dbo.bairro bai on (bai.idbairro = pes.bairro)
  LEFT JOIN dbo.logradouro log on (log.idlogradouro = pes.logradouro)
  LEFT JOIN dbo.cep cep on (cep.idcep  = pes.cep)
--dados pessoa juridica
SELECT pes.nome, pej.cnpj,pes.telefone,pes.email,est.estado,cid.cidade,bai.bairro,log.logradouro,cep.cep
FROM pessoajuridica pej
  INNER JOIN dbo.pessoa pes on (pes.idpessoa = pej.idpessoa and pes.tipo = 'J')
  LEFT JOIN dbo.estado est on (est.idestado = pes.estado)
  LEFT JOIN dbo.cidade cid on (cid.idcidade = pes.cidade)
  LEFT JOIN dbo.bairro bai on (bai.idbairro = pes.bairro)
  LEFT JOIN dbo.logradouro log on (log.idlogradouro = pes.logradouro)
  LEFT JOIN dbo.cep cep on (cep.idcep  = pes.cep)
--negociações compra
SELECT neg.tipo,prod.produto,usu.login as comprador,pes.nome as fornecedor,neg.quantidade,neg.valorUnitario, 
(neg.quantidade * neg.valorUnitario) as valor_total
FROM dbo.negociacao neg
INNER JOIN dbo.usuario usu on (usu.idusuario = neg.usuario)
INNER JOIN dbo.pessoa pes on (pes.idpessoa = neg.pessoa)
INNER JOIN produto prod on (prod.idproduto = neg.produto)
WHERE neg.tipo = 'C'

--negociações venda
SELECT neg.tipo,prod.produto,usu.login as comprador,pes.nome as fornecedor,neg.quantidade,neg.valorUnitario, 
(neg.quantidade * neg.valorUnitario) as valor_total
FROM dbo.negociacao neg
INNER JOIN dbo.usuario usu on (usu.idusuario = neg.usuario)
INNER JOIN dbo.pessoa pes on (pes.idpessoa = neg.pessoa)
INNER JOIN produto prod on (prod.idproduto = neg.produto)
WHERE neg.tipo = 'V'

--valor total compras por produto
SELECT prod.produto,sum(neg.quantidade * neg.valorUnitario) as total_compras
FROM dbo.negociacao neg
INNER JOIN produto prod on (prod.idproduto = neg.produto)
WHERE neg.tipo = 'C'
GROUP by prod.produto

--valor total de vendas por produto
SELECT prod.produto,sum(neg.quantidade * neg.valorUnitario) as total_compras
FROM dbo.negociacao neg
INNER JOIN produto prod on (prod.idproduto = neg.produto)
WHERE neg.tipo = 'V'
GROUP by prod.produto

--usuario que nao compraram
SELECT usu.login
FROM usuario usu
WHERE NOT EXISTS  
	(SELECT neg.idnegociacao from negociacao neg where neg.usuario = usu.idusuario and neg.tipo = 'C')
	
--valor total compra agrupado por usuario
SELECT usu.login,(neg.quantidade * neg.valorUnitario) as valor_total
FROM dbo.usuario usu
INNER JOIN dbo.negociacao neg on (neg.usuario = usu.idusuario)
WHERE neg.tipo = 'C'
GROUP BY usu.login,neg.quantidade,neg.valorUnitario

--valor total venda agrupado por usuario
SELECT usu.login,(neg.quantidade * neg.valorUnitario) as valor_total
from dbo.usuario usu
INNER JOIN dbo.negociacao neg on (neg.usuario = usu.idusuario)
WHERE neg.tipo = 'V'
GROUP BY usu.login,neg.quantidade,neg.valorUnitario

--Valor médio de venda por produto
SELECT prod.produto,ROUND(SUM(neg.valorUnitario * neg.quantidade) / SUM(neg.quantidade),2) AS media_venda
FROM negociacao neg
INNER JOIN produto prod on (prod.idproduto = neg.produto)
WHERE neg.tipo = 'V'
GROUP BY prod.produto;
  