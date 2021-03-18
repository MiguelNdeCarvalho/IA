# Lesson 2

## 1. Considere o problema dos jarros de água

Tem 2 jarros de água com capacidade c1 e c2, pode realizar as seguintes acções com os jarros:
* encher um jarro até estar completamente cheio
* despejar um jarro até estar completamente vazio
* despejar um jarro para outro até que ele esteja vazio ou o outro completamente cheio.

a. Para o caso em que um jarro tem capacidade para 3 litros e o outro capacidade para 2 litros, qual é a melhor sequência de acções para obter 1 litro de água no segundo jarro?

b. Se o primeiro jarro tiver capacidade para 5 litros e o segundo para 2, indique a melhor sequência acções para obter:

i. 1 litro no primeiro 2 no segundo.
ii. 3 litros no primeiro 2 no segundo.
iii. 5 litros no primeiro 1 no segundo.
iv. 1 litro no primeiro 1 no segundo.

c. Para cada alínea anterior indique:
* quantos nós foram expandidos?
* qual o número máximo de nós na lista de nós a expandir?

## 2. algoritmos de pesquisa não informada

1. Defina o predicado: `pesquisa_profundidade`
    Teste a sua definição com problema dos jarros de água.
2. Modifique a sua definição do predicado `pesquisa_profundidade` para eliminar ciclos.
  Teste a sua definição com o problema dos jarros de água.
3. Defina a `pesquisa_profundidade_limitada`
   Teste a sua definição com o problema dos jarros de água.
4. Defina a `pesquisa_profundidade_iterativa`
   Teste a sua definição com o problema dos jarros de água.
5. Defina o predicado `pesquisa_largura_bidireccional`
    Teste a sua definição com o problema dos jarros de água.


## 3. Represente os espaço de estados e os operadores de transição de estados para os seguintes problemas:

### 1. Problema do aspirador:

Um agente robot aspirador, está num mundo com nxm quadrados (salas), cada quadrado está limpo ou sujo. Inicialmente o agente está no quadrado (0,0) e os quadrados sujos são os (i,j) em que i+j é ímpar. O objectivo é ter todos os quadrados limpos com o menor número de acções. O agente pode mover-se para a esquerda, para a direita, para cima ou para baixo e limpar o quadrado onde está.

### 2. Missionários e canibais:

Três missionários e três canibais estão numa margem (a esquerda) de um rio infestado de piranhas, e querem passar todos para a outra margem de boa saúde. têm um barco, que se encontra na margem esquerda.

O barco leva no máximo duas pessoas de cada vez (e no mínimo 1)

Sempre que estão mais canibais do que missionários numa margem, os canibais comem os missionários.

Qual é o menor número de movimentos que os missionários e os canibais têm que fazer para chegarem todos à outra margem.