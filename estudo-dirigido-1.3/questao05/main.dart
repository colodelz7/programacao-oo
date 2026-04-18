import 'produto.dart';
import 'item_carrinho.dart';

void main() {
  Produto p1 = Produto('Notebook', 3500.0, 10, true);
  Produto p2 = Produto('Mouse', 150.0, 35, true);

  ItemCarrinho item1 = ItemCarrinho(p1, 2);
  ItemCarrinho item2 = ItemCarrinho(p2, 5);

  item1.quantidade = 3;
  item2.quantidade = 5;

  item1.exibirItem();
  item2.exibirItem();
}