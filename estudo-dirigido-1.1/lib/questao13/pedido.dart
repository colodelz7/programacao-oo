import '../questao06/produto.dart';

class Pedido {
  int _numero;
  Produto _produto;
  int _quantidade;

  Pedido(this._numero, this._produto, this._quantidade) {
    if (_numero <= 0) print('Erro: numero deve ser maior que 0.');
    if (_quantidade <= 0) print('Erro: quantidade deve ser maior que 0.');
  }

  int get numero => _numero;
  Produto get produto => _produto;
  int get quantidade => _quantidade;

  set quantidade(int valor) {
    if (valor <= 0) { print('Erro: quantidade deve ser maior que 0.'); return; }
    _quantidade = valor;
  }

  set produto(Produto valor) {
    _produto = valor;
  }

  double calcularTotal() {
    return _produto.precoUnitario * _quantidade;
  }

  void exibirPedido() {
    print('Pedido N: $_numero');
    print('Produto: ${_produto.nome}');
    print('Preco Unitario: R\$ ${_produto.precoUnitario.toStringAsFixed(2)}');
    print('Quantidade: $_quantidade');
    print('Total: R\$ ${calcularTotal().toStringAsFixed(2)}');
    print('---');
  }
}
