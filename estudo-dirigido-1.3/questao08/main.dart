import 'cupom_desconto.dart';

void main() {
  CupomDesconto cupom = CupomDesconto('PROMO10', 10.0, true);

  cupom.codigo = 'DESCONTO20';
  cupom.percentual = 20.0;

  double valorFinal = cupom.calcularDesconto(800.0);
  print('Valor com desconto: $valorFinal');

  cupom.exibirCupom();
}