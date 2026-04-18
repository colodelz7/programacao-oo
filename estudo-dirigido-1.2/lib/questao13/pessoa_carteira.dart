class Carteira {
  double _saldo;

  Carteira(this._saldo);

  void adicionar(double valor) {
    _saldo += valor;
  }

  void exibir() {
    print('Saldo na Carteira: $_saldo');
  }
}

class Pessoa {
  String _nome;
  Carteira _carteira;

  Pessoa(this._nome, this._carteira);

  // Getter para acessar a carteira no main
  Carteira get carteira => _carteira;

  void exibir() {
    print('Pessoa: $_nome');
    _carteira.exibir();
  }
}