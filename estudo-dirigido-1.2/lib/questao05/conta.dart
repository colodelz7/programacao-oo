class Conta {
  // Atributos privados
  String _numero;
  String _titular;
  double _saldo;

  // 1. Construtor Nomeado: bancaria (Saldo começa em zero)
  Conta.bancaria(this._numero, this._titular) : _saldo = 0.0;

  // 2. Construtor Nomeado: vip (Saldo começa com valor informado)
  Conta.vip(this._numero, this._titular, double saldoInicial) 
      : _saldo = saldoInicial;

  // Método para depositar
  void depositar(double valor) {
    _saldo += valor;
    print("Depósito de R\$ $valor realizado na conta de $_titular.");
  }

  // Método para sacar (com validação de saldo)
  void sacar(double valor) {
    if (_saldo >= valor) {
      _saldo -= valor;
      print("Saque de R\$ $valor realizado com sucesso.");
    } else {
      print("Erro: Saldo insuficiente para o saque de R\$ $valor.");
    }
  }

  // Método para exibir o resumo
  void exibirResumo() {
    print("--- Resumo da Conta ---");
    print("Número: $_numero");
    print("Titular: $_titular");
    print("Saldo Atual: R\$ ${_saldo.toStringAsFixed(2)}");
    print("-----------------------");
  }
}