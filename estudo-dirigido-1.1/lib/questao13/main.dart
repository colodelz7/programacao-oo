import 'pedido.dart';
import '../questao06/produto.dart';

void main() {
  Produto prod1 = Produto(1, 'Teclado', 150.00, 2);
  Produto prod2 = Produto(2, 'Mouse', 80.00, 3);

  Pedido ped1 = Pedido(1001, prod1, 2);
  Pedido ped2 = Pedido(1002, prod2, 3);

  ped1.exibirPedido();
  ped2.exibirPedido();
}
