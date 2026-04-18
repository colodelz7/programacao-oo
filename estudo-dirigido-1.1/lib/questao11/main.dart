import 'triangulo.dart';

void main() {
  Triangulo t1 = Triangulo(3, 4, 5, '*');
  Triangulo t2 = Triangulo(5, 5, 5, '#');

  print('=== Triangulo 1 ===');
  t1.exibirResumo();
  print('Desenho esquerda:');
  t1.desenharEsquerda();
  print('Desenho centralizado:');
  t1.desenharCentralizado();

  print('=== Triangulo 2 ===');
  t2.exibirResumo();
  print('Desenho esquerda:');
  t2.desenharEsquerda();
  print('Desenho centralizado:');
  t2.desenharCentralizado();
}
