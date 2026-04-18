import 'banco.dart';

void main() {
  // Criando uma única conta e dois gerentes
  Conta conta = Conta('Fernanda', 1000);
  Gerente g1 = Gerente('Marcos');
  Gerente g2 = Gerente('Patrícia');

  print('Estado inicial:');
  conta.exibir();

  print('---');
  g1.depositar(conta, 200);
  conta.exibir();

  print('---');
  g2.sacar(conta, 150);
  conta.exibir();
}