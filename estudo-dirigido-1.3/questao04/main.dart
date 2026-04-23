import 'produto.dart';
import 'lista_produto.dart';

void main() {
  Produto p1 = Produto('Notebook', 3500.0, 10, true);
  Produto p2 = Produto('Mouse', 150.0, 50, true);
  Produto p3 = Produto('Teclado', 200.0, 30, true);

  ListaProduto lista = ListaProduto();

  lista.inserir(p1);
  lista.inserir(p2);
  lista.inserir(p3);

  print('Tamanho da lista: ${lista.tamanho()}');
  print('-------------------');

  lista.remover(1);

  print('Tamanho após remoção: ${lista.tamanho()}');
  print('-------------------');

  Produto? produtoRecuperado = lista.get(0);
  if (produtoRecuperado != null) {
    print('Produto recuperado com get(0):');
    produtoRecuperado.exibirProduto();
  }

  lista.exibirLista();
}