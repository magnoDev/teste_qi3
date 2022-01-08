/* Questão 02 - Retorne os 3 primeiros dígitos para cada país e crie uma relação de país e estados. Exemplo: “BRA-Acre”. */

select substr(upper(paises.pais), 1,3)||'-'|| estados.estado as PaisEstado from paises
inner join estados
	on estados.pais_id = paises.id
order by paises.pais