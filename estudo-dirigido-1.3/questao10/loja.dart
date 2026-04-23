import 'cliente.dart';
import 'lista_cliente.dart';
import 'produto.dart';
import 'lista_produto.dart';
import 'pedido.dart';

class Loja {
  String _nome;
  ListaCliente _clientes;
  ListaProduto _produtos;
  List<Pedido> _pedidos;

  Loja(this._nome, this._clientes, this._produtos, this._pedidos);

  String get nome => _nome;
  ListaCliente get clientes => _clientes;
  ListaProduto get produtos => _produtos;
  List<Pedido> get pedidos => _pedidos;

  set nome(String valor) {
    if (valor.isEmpty) {
      print('Aviso: Nome não pode ser vazio.');
    } else {
      _nome = valor;
    }
  }

  void cadastrarCliente(Cliente cliente) {
    _clientes.inserir(cliente);
  }

  void cadastrarProduto(Produto produto) {
    _produtos.inserir(produto);
  }

  void registrarPedido(Pedido pedido) {
    _pedidos.add(pedido);
    print('Pedido ${pedido.numero} registrado com sucesso.');
  }

  void exibirResumoLoja() {
  print('Nome: $_nome');
  print('Total de clientes: ${_clientes.tamanho()}');
  print('Total de produtos: ${_produtos.tamanho()}');
  print('Total de pedidos: ${_pedidos.length}');
  for (int i = 0; i < _pedidos.length; i++) {
    _pedidos[i].exibirResumoPedido();
  }
}
}