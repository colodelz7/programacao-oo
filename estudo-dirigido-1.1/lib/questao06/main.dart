import 'produto.dart';

void main() {
  Produto p = Produto(1, 'Notebook', 3500.00, 3);
  p.exibirResumo();

  p.codigo = 2;
  p.nome = 'Monitor';
  p.precoUnitario = 800.00;
  p.quantidade = 12;
  p.exibirResumo();
}
