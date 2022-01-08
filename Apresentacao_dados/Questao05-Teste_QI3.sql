/* Questão 05 - Quantos pedidos continham os itens 512 e 1675 na mesma compra? */

select pedidos.id as Pedido_ID, array_to_string(array_agg(itens.id), ',') as Itens_Pedido from pedidos
inner join pedidos_itens
	on pedidos.id = pedidos_itens.pedido_id
inner join itens
	on pedidos_itens.item_id = itens.id
where itens.id in(512,1675)
group by pedidos.id
having count(itens.id) >=2