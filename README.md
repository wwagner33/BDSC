# BDSC

Jogo: Brincando de Ser Chico
Equipe : Alice Fortes Pereira, Arthur Antunes Rangel da Silva, Atyla Freire Torres, Fernando Henrique de Sousa Campos, Luís Guilherme da Silva, Rafael Queiroz Monteiro.

Clientes: Bolsa MAUC: Thaina da Silva Mota (Bolsista),Saulo Moreno Rocha(Orientador).

Sobre o jogo: O jogo Brincando de ser Chico trata-se de um jogo de tabuleiro voltado para o público do fundamental II e ensino médio que ensina a respeito do artista Chico da Silva de forma lúdica, trazendo aspectos da vida do artista e suas obras em cutscenes, quizzes, textos informativos e cartas de recompensa.
 
 Todos os Scripts se encontram na parte 
# Requisitos Funcionais:
### Todos os scripts encontram-se na pasta Cenas
## Funções básicas:


- [x] RF_B1 - Adicionar o  nome do jogador no início do jogo.
  - Codificado - Cena: Cutscene.tscn, script geral da cena.
- [x] RF_B2- Armazenar o nome do jogador durante a execução do jogo. 
   - Codificado - Cena: Cutscene.tscn, script geral da cena.

## Funções fundamentais:

- [x] RF_F1- Percorrer o tabuleiro baseado no número sorteado pelo dado.
    - Codificado - Cena: Main.tscn, script node Dado e script node pino.

- [x] RF_F2- Sair do jogo. 
     - Codificado - Cena: MainScene.tscn, script node modal_sair.

- [x] RF_F3- Pausar o jogo durante sua execução. 
    - Codificado - Cena: Main.tscn, script node ajustes.

- [x] RF_F4- Retornar ao jogo após este ser pausado.
    -Codificado - Cena: Main.tscn, script node ajustes.

- [x] RF_F5- Voltar ao menu após o jogo ser pausado.
    -Codificado - Cena: Main.tscn, script node ajustes.

- [x] RF_F6- Selecionar uma das três opções de resposta a pergunta feita no quiz
    - Codificado - Cena: Main.tscn, script node quiz
   
- [x] RF_F7- Confirmar a escolha da opção de resposta selecionada para a questão do quiz.
    - Codificado - Cena: Main.tscn, script node quiz

- [x] RF_F8- Jogar dado para sorteio do número que definirá o avanço do jogador no tabuleiro.
   - Codificado - Cena: Main.tscn, script node dado

- [x] RF_F9- Sorteio do número internamente após o clique no dado.
   - Codificado - Cena: Main.tscn, script node dado

- [x] RF_F10- Registro das casas já visitadas no tabuleiro.
    - Codificado - Cena: Main.tscn, script node pino

## Funções de saída:

- [x] RF_S1- Mostrar cutscenes explicativas no início do jogo a respeito do artista.-Codificado

- [x] RF_S2- Mostrar caixas de diálogo nas cutscenes que contarão a história do artista. -Codificado

- [x] RF_S3- Mostrar informações da casa do tabuleiro caso o usuário caia em uma casa de informação. -Codificado

- [x] RF_S4- Receber bônus na casa do tabuleiro caso o usuário caia em uma casa de recompensa.-Codificado

- [x] RF_S5- Realizar Quiz na casa do tabuleiro caso o usuário caia em uma casa de quiz.-Codificado

- [x] RF_S6- Receber feedback sobre a resposta ao quiz na casa do tabuleiro.-Codificado

- [x] RF_S7- Retornar para a casa onde o jogador se encontrava antes de girar o dado novamente e errar a escolha no quiz. -Codificado

- [x] RF_S8- Avançar casas no tabuleiro conforme o número sorteado no dado. -Codificado

- [x] RF_S9- Receber o feedback do resultado do dado. -Codificado





