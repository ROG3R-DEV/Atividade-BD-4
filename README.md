## Projeto de Branco de Dados - Atividade 4

<!-- markdownlint-disable -->

<p align="center">
    Atividade 4, para créditos na disciplina de Projeto de Banco de dados, Solicitado pelo professor Diogo Francisco B. Rodrigues
</p>

<p align="center">
<table>
<br />
  <tr>
    <td align="center"><a href="https://github.com/DIOGOBRODRIGUES"><img src="https://avatars.githubusercontent.com/u/15014672?v=4?s=80" width="80px;" alt=""/><br /><sub><b>DIOGO F B RODRIGUES
</b></sub></a><br /></td>
  </tr>
</table>
</p>

<br />

1. O cálculo da comissão baseado no valor do totalde vendas, foi realizado a partir de gatilhos desenvolvidos emaula. Porém, estamos somando manualmente seus itens e inserindo no campon_totavenda. Isso pode fazer com que algum erro ocorra, diferentementede quando se insere a partir de uma aplicação.Entretanto, podemos fazer com que esse cálculo seja realizado automaticamente, utilizando uma trigger.

Desta vez, utilizeos tipos after insert(depois de inserir) e after update(depois de alterar) na tabela comivenda(itens da venda),para que, depois de inserir os produtos, o valor do seu total seja calculado e o campo n_totavenda seja atualizado.Abaixo está um código que precisa ser terminadode ser implementado para executar a tarefa acima.

<img src="./print.png">
<br />
<br />

## Resolução

- `trigger_vendas.sql`: resolução da questão
