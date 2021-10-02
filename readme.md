Desafio Docker 1
Criar uma imagem que exiba uma msg "Full Cycle Rocks" em Golang.

Comentários para o avaliador: nessa versão, a imagem está com tamanho da imagem "Golang" - imagino que a "redução" deva ser feita com multiplas layers.
Tentei fazer com uma layer linux alpine (que tem cerca de 5MB) mas não tive sucesso. A solução seria compilar a aplicação e copiá-la para uma imagem alpine?

Para executar:

docker run socratesduarte/fullcycle-desafio1
