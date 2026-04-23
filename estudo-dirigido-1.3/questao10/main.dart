import 'cliente.dart';
import 'produto.dart';
import 'item_carrinho.dart';
import 'lista_carrinho.dart';
import 'lista_cliente.dart';
import 'lista_produto.dart';
import 'carrinho.dart';
import 'cupom_desconto.dart';
import 'pedido.dart';
import 'loja.dart';

void main() {
  Cliente c1 = Cliente('Ana Paula', 'ana@email.com', 500.0, true);
  Cliente c2 = Cliente('João Souza', 'joao@email.com', 300.0, true);

  Produto p1 = Produto('Notebook', 3500.0, 10, true);
  Produto p2 = Produto('Mouse', 150.0, 50, true);

  ItemCarrinho item1 = ItemCarrinho(p1, 1);
  ItemCarrinho item2 = ItemCarrinho(p2, 2);

  ListaCarrinho listaCarrinho = ListaCarrinho();
  Carrinho carrinho = Carrinho(c1, listaCarrinho, true);
  carrinho.adicionarItem(item1);
  carrinho.adicionarItem(item2);

  CupomDesconto cupom = CupomDesconto('DESCONTO10', 10.0, true);

  Pedido pedido = Pedido('001', carrinho, cupom);
  pedido.fecharPedido();

  print('Itens do pedido:');
  print('- ${p1.nome}');
  print('- ${p2.nome}');

  Loja loja = Loja('Minha Loja', ListaCliente(), ListaProduto(), []);

  loja.cadastrarCliente(c1);
  loja.cadastrarCliente(c2);
  loja.cadastrarProduto(p1);
  loja.cadastrarProduto(p2);
  loja.registrarPedido(pedido);

  loja.exibirResumoLoja();
}