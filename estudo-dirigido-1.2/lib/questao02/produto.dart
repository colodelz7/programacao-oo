class Produto {
  // Atributos privados
  String _nome;
  double _preco;
  int _estoque;

  // O CONSTRUTOR DEVE SER ASSIM:
  // Note que as variáveis estão DENTRO dos parênteses com o "this"
  Produto(this._nome, this._preco, this._estoque);

  // Método para repor o estoque
  void repor(int qtd) {
    _estoque = _estoque + qtd;
    print("Reposição de $qtd unidades realizada.");
  }

  // Método para vender
  void vender(int qtd) {
    if (_estoque >= qtd) {
      _estoque = _estoque - qtd;
      print("Venda de $qtd unidades realizada.");
    } else {
      print("Estoque insuficiente!");
    }
  }

  // Método para exibir a ficha
  void exibirFicha() {
    print("--- Ficha do Produto ---");
    print("Nome: $_nome");
    print("Preço: R\$ $_preco");
    print("Estoque: $_estoque");
  }
}