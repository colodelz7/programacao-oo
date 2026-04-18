import 'produto.dart';

void main() {
  // Você passa os valores na ordem: Nome, Preço, Estoque
  Produto meuProduto = Produto("Notebook", 2500.0, 10);

  meuProduto.exibirFicha();
  meuProduto.repor(5);
  meuProduto.exibirFicha();
}