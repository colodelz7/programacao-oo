import 'contador.dart';

void main() {
  Contador c1 = Contador(0);
  c1.exibirValor();
  c1.incrementar();
  c1.incrementar();
  c1.incrementar();
  c1.decrementar();
  c1.exibirValor();
  c1.zerar();
  c1.exibirValor();
  c1.decrementar();

  print('=== Contador 2 ===');
  Contador c2 = Contador(10);
  c2.exibirValor();
  c2.decrementar();
  c2.decrementar();
  c2.incrementar();
  c2.zerar();
  c2.exibirValor();
}
