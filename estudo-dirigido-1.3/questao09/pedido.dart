import 'carrinho.dart';
import 'cupom_desconto.dart';

class Pedido {
  String _numero;
  Carrinho _carrinho;
  CupomDesconto? _cupom;
  double _totalBruto;
  double _totalFinal;
  String _status;

  Pedido(this._numero, this._carrinho, this._cupom)
      : _totalBruto = 0,
        _totalFinal = 0,
        _status = 'aberto';

  String get numero => _numero;
  Carrinho get carrinho => _carrinho;
  CupomDesconto? get cupom => _cupom;
  double get totalBruto => _totalBruto;
  double get totalFinal => _totalFinal;
  String get status => _status;

  set numero(String valor) {
    if (valor.isEmpty) {
      print('Aviso: Número não pode ser vazio.');
    } else {
      _numero = valor;
    }
  }

  set cupom(CupomDesconto? valor) => _cupom = valor;

  void fecharPedido() {
    if (_status != 'aberto') {
      print('Aviso: Pedido não está aberto.');
      return;
    }
    _totalBruto = _carrinho.calcularTotal();
    if (_cupom != null && _cupom!.ativo) {
      _totalFinal = _cupom!.calcularDesconto(_totalBruto);
    } else {
      _totalFinal = _totalBruto;
    }
    _status = 'fechado';
  }

  void cancelarPedido() {
    if (_status == 'cancelado') {
      print('Aviso: Pedido já está cancelado.');
      return;
    }
    _status = 'cancelado';
  }

  void exibirResumoPedido() {
    print('Número: $_numero');
    print('Status: $_status');
    print('Cliente: ${_carrinho.cliente.nome}');
    print('Total Bruto: $_totalBruto');
    print('Total Final: $_totalFinal');
    print('-------------------');
  }
}