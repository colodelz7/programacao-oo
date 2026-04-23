// main.dart
import 'cliente.dart';
import 'lista_cliente.dart';

void main() {
  Cliente c1 = Cliente('Ana Paula', 'ana@email.com', 150.0, true);
  Cliente c2 = Cliente('João Souza', 'joao@email.com', 200.0, true);
  Cliente c3 = Cliente('Maria Lima', 'maria@email.com', 300.0, true);

  ListaCliente lista = ListaCliente();

  lista.inserir(c1);
  lista.inserir(c2);
  lista.inserir(c3);

  print('Tamanho da lista: ${lista.tamanho()}');
  print('-------------------');

  lista.remover(1);

  print('Tamanho após remoção: ${lista.tamanho()}');
  print('-------------------');

  Cliente? clienteRecuperado = lista.get(0);
  if (clienteRecuperado != null) {
    print('Cliente recuperado com get(0):');
    clienteRecuperado.exibirCliente();
  }

  lista.exibirLista();
}