import 'produto.dart';

class ItemCarrinho {
  Produto _produto;
  int _quantidade;

  ItemCarrinho(this._produto, this._quantidade);

  Produto get produto => _produto;
  int get quantidade => _quantidade;

  set produto(Produto valor) => _produto = valor;

  set quantidade(int valor) {
    if (valor <= 0) {
      print('Aviso: Quantidade deve ser maior que zero.');
    } else {
      _quantidade = valor;
    }
  }

  double calcularSubtotal() => _produto.preco * _quantidade;

  void exibirItem() {
    double subtotal = calcularSubtotal();
    print('Produto: ${_produto.nome}');
    print('Quantidade: $_quantidade');
    print('Subtotal: $subtotal');
  }
}