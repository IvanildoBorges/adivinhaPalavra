import Foundation

//O jogo é sobre advinhar a palavra que o amigo gravou no jogo
// vence quem adivinhar primeiro

var nome1 = ""
var nome2 = ""
var vez = 1
var continuar = 0
var letra: Character
var status: Bool = false
var nome1Escondido = ""
var nome2Escondido = ""
var auxChar: [Character] = []

iniciaJogo()

while(!status) {
  print("-------------------------------------------------------------------")
  print("------------------------ HORA DE ADIVINHAR ------------------------")
  print("-------------------------------------------------------------------")
  if (vez == 1) {
    print("Boa sorte jogador \(vez)")
    nome1Escondido = escondePalavra(nome1Escondido)
    print("\nDigite uma letra: ", terminator: "\t")
    letra = inputChar()
    nome1Escondido = desvendar(nome2, nome1Escondido, letra)
    vez+=1
    status = checaVencedor(nome1Escondido)
  } else {
    print("Boa sorte jogador \(vez)")
    nome2Escondido = escondePalavra(nome2Escondido)
    print("\nDigite uma letra: ", terminator: "\t")
    letra = inputChar()
    nome2Escondido = desvendar(nome1, nome2Escondido, letra)
    vez-=1
    status = checaVencedor(nome2Escondido)
  }

  if (status) {
    print("\nDeseja jogar novamente:")
    print("Digite 1 para continuar\nDigite 0 para terminar")
    if let valor = readLine() {
      if let numero = Int(valor) {
        continuar = numero
      }
    }
    system("clear")
    if (continuar == 1) {
      (nome1, nome2, nome1Escondido, nome2Escondido) = ("", "", "", "")
      (vez, continuar) = (1, 0)
      auxChar = []
      status = false
      iniciaJogo()
    } else {
      status = true
      print("Jogo encerrado!")
    }
  }
}

func iniciaJogo() {
    print("Jogador 1 digite aqui sua palavra-chave para o proximo jogador adivinhar:", terminator: "\t")
  nome1 = input()
  
  print("Jogador 2 digite aqui sua palavra-chave para o proximo jogador adivinhar:", terminator: "\t")
  nome2 = input()
  
  nome1Escondido = nome2
  nome2Escondido = nome1
}

func input() -> String {
  var nome: String = ""
  if let entrada = readLine() {
    nome = entrada.lowercased()
  }
  system("clear")
  return nome
}

func inputChar() -> Character {
  var nome: Character = "-"
  if let entrada = readLine() {
    nome = Character(entrada.lowercased())
  }
  return nome
}

func escondePalavra(_ palavra: String) -> String {
  var resultado: String = ""
  var quantidade: Int = 0

  if (!palavra.contains("_")) {
    for _ in palavra {
      resultado += "_"
      quantidade += 1
    }
    print("\nPalavra-desafio feita pelo jogador adversário: \(resultado)", terminator: "\n\n")
    print("\nDICA: Palavra com \(quantidade) letras", terminator: "\n")
  } else {
    for _ in palavra {
      quantidade += 1
    }
    resultado = palavra
    print("\nPalavra-desafio feita pelo jogador adversário: \(resultado)", terminator: "\n\n")
    print("\nDICA: Palavra com \(quantidade) letras", terminator: "\n")
  }

  return resultado
}

func desvendar(_ nome: String, _ nomeEscondido: String, _ char: Character) -> String {
  var resultado: String = ""
  var auxNome: [Character] = []
  var auxIndex: [Int] = []
  var i = 0

  for letra in nomeEscondido {
    auxNome.append(letra)
  }
  
  for letra in nome {
    if (letra == char && !auxChar.contains(char) && i < nome.count) {
      auxIndex.append(i)
    }
    i+=1
  }

  for id in auxIndex { 
    for (indice, _) in auxNome.enumerated() {
      if (indice == id) {
        auxNome[indice] = char
      }
    }
  }

  resultado = String(auxNome)

  return resultado
}

func checaVencedor(_ nome: String) -> Bool {
  var win = false
  
  if (nome == nome2) {
    print("\n\nParabéns jogador 1, você venceu!")
    win = true
  } else if (nome == nome1) {
    print("\n\nParabéns jogador 2, você venceu!")
    win = true
  } else {
    print("\n\nResultado: \(nome)")
    print("\nAinda não foi dessa vez!\nMas não desista, estou torcendo por você! ^^")
  }
  
  print("\n\nAPERTE A TECLA ENTER PARA CONTINUAR...")
   _ = readLine() 
  system("clear")

  return win
}