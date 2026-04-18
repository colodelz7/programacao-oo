class Cliente {
  String _nome;
  String _email;
  double _saldoCarteira;
  bool _ativo;

  Cliente(this._nome, this._email, this._saldoCarteira, this._ativo);

  String get nome => _nome;
  String get email => _email;
  double get saldoCarteira => _saldoCarteira;
  bool get ativo => _ativo;

  set nome(String valor) {
    if (valor.isEmpty) {
      print('Aviso: Nome não pode ser vazio.');
    } else {
      _nome = valor;
    }
  }

  set email(String valor) {
    if (valor.isEmpty) {
      print('Aviso: Email não pode ser vazio.');
    } else {
      _email = valor;
    }
  }

  set saldoCarteira(double valor) {
    if (valor < 0) {
      print('Aviso: Saldo não pode ser negativo.');
    } else {
      _saldoCarteira = valor;
    }
  }

  set ativo(bool valor) => _ativo = valor;

  void ativar() => _ativo = true;
  void desativar() => _ativo = false;

  void adicionarSaldo(double valor) {
    if (valor <= 0) {
      print('Aviso: Valor deve ser positivo.');
    } else {
      _saldoCarteira += valor;
    }
  }

  void debitarSaldo(double valor) {
    if (valor <= 0) {
      print('Aviso: Valor deve ser positivo.');
    } else if (valor > _saldoCarteira) {
      print('Aviso: Saldo insuficiente.');
    } else {
      _saldoCarteira -= valor;
    }
  }

  void exibirCliente() {
    print('Nome: $_nome');
    print('Email: $_email');
    print('Saldo: R\$ ${_saldoCarteira.toStringAsFixed(2)}');
    print('Ativo: $_ativo');
    print('-------------------');
  }
}