--  EXERCÍCIOS - DISTRIBUIDORA_MAGU

-- Qual a quantidade de um determinado produto no estoque?
SELECT PRO_CODIGO, PRO_NOME, PRO_QUANTIDADE FROM `produtos`; -- Retorna a quantidade de todos os produtos do estoque;

SELECT PRO_CODIGO, PRO_NOME, PRO_QUANTIDADE FROM `produtos`
WHERE PRO_NOME = "DORITOS";                                  -- Retorna a quantidade de um produto determinado 'DORITOS'

-- Qual produto é mais vendido?
SELECT PED_PRO_PRODUTO PRODUTO, SUM(PED_PRO_QUANTIDADE) QUANTIDADE
FROM pedidos_produtos 
GROUP BY FK_PRO_CODIGO
ORDER BY QUANTIDADE DESC;

-- Qual produto é menos vendido?
SELECT PED_PRO_PRODUTO PRODUTO, SUM(PED_PRO_QUANTIDADE) QUANTIDADE
FROM pedidos_produtos 
GROUP BY FK_PRO_CODIGO
ORDER BY QUANTIDADE ASC;


-- Qual a média de faturamento por cliente?
-- Qual o histórico de vendas por produto?
-- Qual o vendedor que mais fatura para a empresa?
-- Quanto devo pagar de comissão para um vendedor sobre as vendas em um determinado período?
-- Quais são os pedidos pendentes de faturamento?
-- Quais e quantos foram os pedidos emitidos?
-- Quando devo comprar um determinado produto?
-- Quais foram os pedidos emitidos para o cliente X?
-- Qual foi a data da última venda de um determinado produto?
-- Onde o produto está localizado dentro do estoque?
