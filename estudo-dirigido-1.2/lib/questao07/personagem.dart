class Personagem {
  String _nome;
  int _vida;
  int _energia;

  Personagem(this._nome, this._vida, this._energia);

  // Método para alterar a vida
  void alterarVida(int novaVida) {
    _vida = novaVida;
  }

  // Método para exibir o estado
  void exibir() {
    print("Personagem: $_nome | Vida: $_vida | Energia: $_energia");
  }
}