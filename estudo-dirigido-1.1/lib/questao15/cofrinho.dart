class Cofrinho {
  double _saldo;
  int _quantidadeDepositos;

  Cofrinho(this._saldo) : _quantidadeDepositos = 0 {
    if (_saldo < 0) {
      print('Erro: saldo inicial deve ser maior ou igual a 0.');
      _saldo = 0;
    }
  }

  double get saldo => _saldo;
  int get quantidadeDepositos => _quantidadeDepositos;

  void depositar(double valor) {
    if (valor <= 0) {
      print('Erro: valor do deposito deve ser maior que 0.');
      return;
    }
    _saldo = _saldo + valor;
    _quantidadeDepositos++;
    print('Deposito de R\$ ${valor.toStringAsFixed(2)} realizado. Saldo: R\$ ${_saldo.toStringAsFixed(2)}');
  }

  void quebrar() {
    print('Quebrando o cofrinho...');
    print('Total acumulado: R\$ ${_saldo.toStringAsFixed(2)}');
    print('Total de depositos realizados: $_quantidadeDepositos');
    _saldo = 0;
    _quantidadeDepositos = 0;
    print('Cofrinho zerado!');
  }

  void exibirSaldo() {
    print('Saldo atual: R\$ ${_saldo.toStringAsFixed(2)}');
    print('Depositos realizados: $_quantidadeDepositos');
    print('---');
  }
}
