# Teste (QI)³
## _Teste para a vaga de Estágio em Engenharia de Dados_
### Por Magno Macedo de Oliveira

Esse projeto tem como objetivo criar uma solução voltada para tratamento, análise e vizualização de dados, tendo como ponto de partida uma planilha onde consta várias abas contendo dados que simulam a de uma empresa logista internacional, indo de uma lista de marcas vendidas, cadastros de cliente e pedidos realizados em determinado período.

Para o desenvolvimento desse projeto foi utilizado:
- Google Sheets (Usado para visuzaliar a base original)
- Pentaho Data Integration (Ferramenta ETL)
- PostgreSQL (SGBD usado para criar o banco que recebeu os dados tratados)
- pgAdmin (Interface usada para acompanhar todo processo de criação do banco e também para realização de algumas consultas)
- DBeaver (Foi útil para geração do Diagrama de Entidade-Relacionamento do banco criado)
- PowerBI (Usado para a etapa de visualização dos dados)

## Como foi feito?
Com o teste em mãos ([Clique aqui](https://github.com/magnoDev/teste_qi3/blob/main/Desafio_Teste-QI3.pdf)), meu primeiro desafio foi o de verificar os dados e começar a trabalhar em como iria fazer todo processo de ETL (Extract, Transforma and Load) para então conseguir gerar as informações solicitadas.

![](https://raw.githubusercontent.com/magnoDev/teste_qi3/main/Base_Original/Esquema_BaseTesteQI3.png)
> Esboço criado para entender melhor a base original.

A do esboço acima foi bem útil para decidir quais seriam as primeiras tabelas do banco, além de facilitar a identificação de onde existiria mais dificuldade.

Após isso, com o PDI (Pentaho Data Integration) comecei a focar nas informações mais genéricas que não dependiam de nenhuma informação externa e então passei a criar as primeiras transformações.

![](https://raw.githubusercontent.com/magnoDev/teste_qi3/main/Transformacoes/Prints/Segmentos.png)
> Transformação criada para abastecer a tabela Segmentos.

As tabelas iniciais basicamente seguiram o mesmo molde, a extração dos dados da planilha base, pequeno tratamento no tipo dos dados e criação e abastecimento dos dados no banco de dados.

Por fim, ficaram as transformações mais elaboradas.

![](https://raw.githubusercontent.com/magnoDev/teste_qi3/main/Transformacoes/Prints/Pedidos_Envios.png)
> Transformação criada para abastecer a tabela pedidos_envio.

As informações que dependiam de dados externos, dados das demais abas da planilha, precisaram de um pouco mais de cuidado, por conta de ter dados nulos, datas com formatos incorretos, linhas duplicadas e afins.

Concluido esse processo, tivemos então a criação do banco de dados finalizada.

![](https://raw.githubusercontent.com/magnoDev/teste_qi3/main/Backup_Banco_Teste_QI3/DiagramaER-teste_qi3.png)
> Banco de dados criado e abastecido.
