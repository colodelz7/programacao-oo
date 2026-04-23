import 'cliente.dart';
import 'lista_carrinho.dart';
import 'item_carrinho.dart';

class Carrinho {
  Cliente _cliente;
  ListaCarrinho _itens;
  bool _aberto;

  Carrinho(this._cliente, this._itens, this._aberto);

  Cliente get cliente => _cliente;
  ListaCarrinho get itens => _itens;
  bool get aberto => _aberto;

  set cliente(Cliente valor) => _cliente = valor;
  set aberto(bool valor) => _aberto = valor;

  void adicionarItem(ItemCarrinho item) {
    if (!_aberto) {
      print('Aviso: Carrinho está fechado.');
    } else {
      _itens.inserir(item);
    }
  }

  void removerItem(int i) {
    if (!_aberto) {
      print('Aviso: Carrinho está fechado.');
    } else {
      _itens.remover(i);
    }
  }

  double calcularTotal() {
    double total = 0;
    for (int i = 0; i < _itens.tamanho(); i++) {
      ItemCarrinho? item = _itens.get(i);
      if (item != null) {
        total += item.calcularSubtotal();
      }
    }
    return total;
  }

  void exibirCarrinho() {
  double total = calcularTotal();
  print('Cliente: ${_cliente.nome}');
  print('Aberto: $_aberto');
  _itens.exibirLista();
  print('Total: $total');
 }
}  