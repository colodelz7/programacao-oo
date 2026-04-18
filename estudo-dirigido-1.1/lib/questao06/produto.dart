class Produto {
  int _codigo;
  String _nome;
  double _precoUnitario;
  int _quantidade;

  Produto(this._codigo, this._nome, this._precoUnitario, this._quantidade) {
    if (_codigo <= 0) print('Erro: codigo deve ser maior que 0.');
    if (_nome.isEmpty) print('Erro: nome nao pode ser vazio.');
    if (_precoUnitario <= 0) print('Erro: precoUnitario deve ser maior que 0.');
    if (_quantidade <= 0) print('Erro: quantidade deve ser maior que 0.');
  }

  int get codigo => _codigo;
  String get nome => _nome;
  double get precoUnitario => _precoUnitario;
  int get quantidade => _quantidade;

  set codigo(int valor) {
    if (valor <= 0) { print('Erro: codigo deve ser maior que 0.'); return; }
    _codigo = valor;
  }

  set nome(String valor) {
    if (valor.isEmpty) { print('Erro: nome nao pode ser vazio.'); return; }
    _nome = valor;
  }

  set precoUnitario(double valor) {
    if (valor <= 0) { print('Erro: precoUnitario deve ser maior que 0.'); return; }
    _precoUnitario = valor;
  }

  set quantidade(int valor) {
    if (valor <= 0) { print('Erro: quantidade deve ser maior que 0.'); return; }
    _quantidade = valor;
  }

  double calcularDesconto() {
    double percentual = 0;
    if (_quantidade >= 20) {
      percentual = 0.15;
    } else if (_quantidade >= 10) {
      percentual = 0.10;
    } else if (_quantidade >= 5) {
      percentual = 0.05;
    }
    return _precoUnitario * _quantidade * percentual;
  }

  double calcularTotal() {
    return (_precoUnitario * _quantidade) - calcularDesconto();
  }

  void exibirResumo() {
    print('Codigo: $_codigo');
    print('Nome: $_nome');
    print('Preco Unitario: R\$ ${_precoUnitario.toStringAsFixed(2)}');
    print('Quantidade: $_quantidade');
    print('Desconto: R\$ ${calcularDesconto().toStringAsFixed(2)}');
    print('Total: R\$ ${calcularTotal().toStringAsFixed(2)}');
    print('---');
  }
}
