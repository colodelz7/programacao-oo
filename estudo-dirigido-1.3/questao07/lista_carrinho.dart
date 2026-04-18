import 'item_carrinho.dart';

class ListaCarrinho {
  List<ItemCarrinho> _itens = [];

  void inserir(ItemCarrinho item) {
    _itens.add(item);
    print('Item ${item.produto.nome} inserido com sucesso.');
  }

  void remover(int i) {
    if (i < 0 || i >= _itens.length) {
      print('Aviso: Índice inválido para remoção.');
    } else {
      print('Item ${_itens[i].produto.nome} removido com sucesso.');
      _itens.removeAt(i);
    }
  }

  int tamanho() => _itens.length;

  ItemCarrinho? get(int i) {
    if (i < 0 || i >= _itens.length) {
      print('Aviso: Índice inválido para consulta.');
      return null;
    }
    return _itens[i];
  }

  void exibirLista() {
    if (_itens.isEmpty) {
      print('Carrinho vazio.');
      return;
    }
    print('=== Lista do Carrinho ===');
    for (int i = 0; i < _itens.length; i++) {
      print('Posição $i:');
      _itens[i].exibirItem();
    }
  }
}