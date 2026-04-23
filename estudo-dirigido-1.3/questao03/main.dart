import 'produto.dart';

void main() {
  Produto p1 = Produto('Notebook', 3500.0, 10, true);
  Produto p2 = Produto('Mouse', 150.0, 35, true);

  p1.nome = 'Notebook Gamer';
  p2.preco = 120.0;

  p1.reporEstoque(10);
  p2.retirarEstoque(10);

  p1.exibirProduto();
  p2.exibirProduto();
}