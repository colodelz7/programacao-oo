// main.dart
import 'Cliente.dart';

void main() {
  Cliente c1 = Cliente('Ana Silva', 'ana@email.com', 100.0, true);
  Cliente c2 = Cliente('João Souza', 'joao@email.com', 200.0, true);

  c1.nome = 'Ana Paula';
  c2.email = 'joaoatualizado@email.com';

  c1.adicionarSaldo(50.0);
  c2.debitarSaldo(80.0);

  c1.exibirCliente();
  c2.exibirCliente();
}