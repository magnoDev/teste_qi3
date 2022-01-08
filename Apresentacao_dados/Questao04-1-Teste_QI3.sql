/* Questão 04 - Existem pedidos sem itens registrados?
Se sim, para quantos pedidos e qual o valor total desses pedidos sem itens? */

select pedidos.id, pedidos.valor_venda from pedidos
left join pedidos_itens
 on pedidos.id = pedidos_itens.pedido_id
where pedidos_itens.pedido_id is null