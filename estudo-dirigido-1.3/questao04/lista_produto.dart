import 'produto.dart';

class ListaProduto {
  List<Produto> _produtos = [];

  void inserir(Produto produto) {
    _produtos.add(produto);
    print('Produto ${produto.nome} inserido com sucesso.');
  }

  void remover(int i) {
    if (i < 0 || i >= _produtos.length) {
      print('Aviso: Índice inválido para remoção.');
    } else {
      print('Produto ${_produtos[i].nome} removido com sucesso.');
      _produtos.removeAt(i);
    }
  }

  int tamanho() => _produtos.length;

  Produto? get(int i) {
    if (i < 0 || i >= _produtos.length) {
      print('Aviso: Índice inválido para consulta.');
      return null;
    }
    return _produtos[i];
  }

  void exibirLista() {
    if (_produtos.isEmpty) {
      print('Lista vazia.');
      return;
    }
    print('=== Lista de Produtos ===');
    for (int i = 0; i < _produtos.length; i++) {
      print('Posição $i:');
      _produtos[i].exibirProduto();
    }
  }
}