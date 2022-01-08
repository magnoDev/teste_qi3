/* Questão 06 - Quantos clientes compraram mais de 7 vezes, durante 2015 e 2018. Desses clientes,
quantos gastaram no total mais de 1 mil reais? */

select clientes.nome as Cliente_Nome, array_to_string(array_agg(pedidos.id), ',') as Pedidos_Cliente, sum(pedidos.valor_venda) as Total_Vendas from clientes
inner join pedidos
	on clientes.id = pedidos.cliente_id
group by clientes.id
having count(pedidos.id) >=7