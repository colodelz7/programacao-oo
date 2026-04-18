class Conta {
  String _titular;
  double _saldo;

  Conta(this._titular, this._saldo);

  void set saldo(double valor) => _saldo = valor;
  double get saldo => _saldo;

  void exibir() {
    print("Conta de $_titular | Saldo Atual: R\$ $_saldo");
  }
}

class Gerente {
  String _nome;

  Gerente(this._nome);

  void depositar(Conta conta, double valor) {
    conta.saldo += valor;
    print("Gerente $_nome depositou R\$ $valor");
  }

  void sacar(Conta conta, double valor) {
    conta.saldo -= valor;
    print("Gerente $_nome sacou R\$ $valor");
  }
}