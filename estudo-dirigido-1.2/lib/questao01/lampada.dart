class Lampada {
  bool ligada = false;
  int intensidade = 50;

  // O construtor pode ficar vazio se os valores já foram iniciados acima
  Lampada(); 

  void ligar() {
    ligada = true;
  }

  void desligar() {
    ligada = false;
  }

  void aumentar() {
    intensidade = intensidade + 10;
  }

  void diminuir() {
    intensidade = intensidade - 10;
  }

  void exibirEstado() {
    print("Ligada: $ligada");
    print("Intensidade: $intensidade");
  }
}