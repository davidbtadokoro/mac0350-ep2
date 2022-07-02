# MAC0350 - EP2
---

## Colocando o neo4j no ar

No diretório raiz, digite `docker-compose up -d` para rodar o neo4j. Recomenda-se esperar alguns segundos antes de conectar-se ao serviço, para que este possa inicializar.

Na dúvida, digite `docker logs mac0350-neo4j` e, se o último log for "Started.", já pode se conectar o neo4j.

## Se conectando ao neo4j pelo browser

No seu browser, acesse a URL http://localhost:7474.

Deve aparecer uma aba com `$ :server connect` no topo. Clique no botão *Connect*.

Pronto, agora você já pode povoar o BD e fazer as queries!

## Scripts para povoar o BD

O BD padrão (neo4j) virá vazio. Para povoá-lo, rode (no prompt do neo4j do browser) os comandos dos arquivos `scripts/graphs/DML-PERSON` e `scripts/graphs/DML-PERSONFRIEND`.

É importante que esses comandos sejam rodados na ordem descrita acima, pois o segundo dependerá do primeiro
