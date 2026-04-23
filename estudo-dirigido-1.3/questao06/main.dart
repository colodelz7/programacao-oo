import 'produto.dart';
import 'item_carrinho.dart';
import 'lista_carrinho.dart';

void main() {
  Produto p1 = Produto('Notebook', 3500.0, 10, true);
  Produto p2 = Produto('Mouse', 150.0, 50, true);
  Produto p3 = Produto('Teclado', 200.0, 30, true);

  ItemCarrinho item1 = ItemCarrinho(p1, 2);
  ItemCarrinho item2 = ItemCarrinho(p2, 5);
  ItemCarrinho item3 = ItemCarrinho(p3, 1);

  ListaCarrinho lista = ListaCarrinho();

  lista.inserir(item1);
  lista.inserir(item2);
  lista.inserir(item3);

  print('Tamanho do carrinho: ${lista.tamanho()}');
  print('-------------------');

  lista.remover(1);

  print('Tamanho após remoção: ${lista.tamanho()}');
  print('-------------------');

  ItemCarrinho? itemRecuperado = lista.get(0);
  if (itemRecuperado != null) {
    print('Item recuperado com get(0):');
    itemRecuperado.exibirItem();
  }

  lista.exibirLista();
}