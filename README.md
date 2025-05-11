# 🕹️ Jogo da Palavra Secreta - Swift CLI

Um jogo simples de adivinhação entre dois jogadores feito em Swift. Cada jogador escolhe uma palavra secreta, e os jogadores se alternam tentando adivinhar as letras da palavra do outro. Vence quem descobrir a palavra do adversário primeiro.

---

## 🚀 Como jogar

1. **Jogador 1** digita uma palavra secreta.
2. **Jogador 2** digita uma palavra secreta.
3. O jogo começa com dicas e underscores (_) ocultando as palavras.
4. A cada rodada, os jogadores tentam adivinhar uma letra da palavra adversária.
5. Se acertar, a letra aparece na posição correta.
6. Vence quem adivinhar totalmente a palavra do adversário primeiro.
7. Após o fim do jogo, é possível reiniciar a partida.

---

## 🧠 Lógica do Jogo

- Utiliza `readLine()` para entrada dos jogadores.
- A tela é "limpa" a cada jogada usando `system("clear")`.
- As letras já tentadas são armazenadas para evitar repetições.
- O jogo continua até que uma das palavras seja totalmente descoberta.
- O usuário escolhe se deseja jogar novamente ao final.

---

## 🛠️ Tecnologias Utilizadas

- [Swift (CLI)](https://swift.org/)
- Terminal como interface do usuário
- Funções auxiliares para entrada, esconder palavras e verificação de vitória

---

## 📂 Estrutura do Código

- `iniciaJogo()`: coleta as palavras dos jogadores
- `escondePalavra()`: transforma a palavra em uma string de underscores
- `desvendar()`: revela as letras corretas
- `checaVencedor()`: verifica se a palavra foi completamente descoberta
- `input()` e `inputChar()`: funções utilitárias para entrada de texto e caractere

---

## 🧪 Exemplo

**Jogador 1** digite aqui sua palavra-chave para o próximo jogador adivinhar: `banana`
**Jogador 2** digite aqui sua palavra-chave para o próximo jogador adivinhar: `abacate`

`------------------------ HORA DE ADIVINHAR ------------------------`

**Boa sorte jogador 1**

`Palavra-desafio feita pelo jogador adversário: _______`

**DICA:** Palavra com 7 letras

`Digite uma letra: a`

`Resultado: a_a_a`

**Ainda não foi dessa vez!**
**Mas não desista, estou torcendo por você! ^^**

---

## 🔄 Reinício do Jogo

Ao final da partida, o usuário pode optar por:

- `1`: Jogar novamente
- `0`: Encerrar o jogo

---

## 📋 Requisitos

- Swift instalado localmente
- Terminal para executar o programa

---

## 🧑‍💻 Autor

Desenvolvido por [Ivanildo Borges]([https://appkanban.netlify.app](https://www.linkedin.com/in/IvanildoBorges/)).

---

## 📄 Licença

Este projeto é de domínio público para fins educacionais e de aprendizado.
