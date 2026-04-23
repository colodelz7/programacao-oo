import 'cliente.dart';
import 'produto.dart';
import 'item_carrinho.dart';
import 'lista_carrinho.dart';
import 'carrinho.dart';
import 'cupom_desconto.dart';
import 'pedido.dart';

void main() {
  Cliente c1 = Cliente('Ana Paula', 'ana@email.com', 500.0, true);

  Produto p1 = Produto('Notebook', 3500.0, 10, true);
  Produto p2 = Produto('Mouse', 150.0, 35, true);

  ItemCarrinho item1 = ItemCarrinho(p1, 1);
  ItemCarrinho item2 = ItemCarrinho(p2, 2);

  ListaCarrinho lista = ListaCarrinho();
  Carrinho carrinho = Carrinho(c1, lista, true);

  carrinho.adicionarItem(item1);
  carrinho.adicionarItem(item2);

  CupomDesconto cupom = CupomDesconto('DESCONTO10', 10.0, true);

  Pedido pedido = Pedido('001', carrinho, cupom);

  pedido.fecharPedido();
  pedido.exibirResumoPedido();
}