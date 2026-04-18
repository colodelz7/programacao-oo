// lista_cliente.dart
import 'cliente.dart';


class ListaCliente {
  List<Cliente> _clientes = [];

  void inserir(Cliente cliente) {
    _clientes.add(cliente);
    print('Cliente ${cliente.nome} inserido com sucesso.');
  }

  void remover(int i) {
    if (i < 0 || i >= _clientes.length) {
      print('Aviso: Índice inválido para remoção.');
    } else {
      print('Cliente ${_clientes[i].nome} removido com sucesso.');
      _clientes.removeAt(i);
    }
  }

  int tamanho() {
    return _clientes.length;
  }

  Cliente? get(int i) {
    if (i < 0 || i >= _clientes.length) {
      print('Aviso: Índice inválido para consulta.');
      return null;
    }
    return _clientes[i];
  }

  void exibirLista() {
    if (_clientes.isEmpty) {
      print('Lista vazia.');
      return;
    }
    print('=== Lista de Clientes ===');
    for (int i = 0; i < _clientes.length; i++) {
      print('Posição $i:');
      _clientes[i].exibirCliente();
    }
  }
}