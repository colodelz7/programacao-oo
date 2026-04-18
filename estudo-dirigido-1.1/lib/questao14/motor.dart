class Motor {
  int _potencia;
  String _tipo;

  Motor(this._potencia, this._tipo) {
    if (_potencia <= 0) print('Erro: potencia deve ser maior que 0.');
    if (_tipo.isEmpty) print('Erro: tipo nao pode ser vazio.');
  }

  int get potencia => _potencia;
  String get tipo => _tipo;

  set potencia(int valor) {
    if (valor <= 0) { print('Erro: potencia deve ser maior que 0.'); return; }
    _potencia = valor;
  }

  set tipo(String valor) {
    if (valor.isEmpty) { print('Erro: tipo nao pode ser vazio.'); return; }
    _tipo = valor;
  }

  void exibirMotor() {
    print('  Potencia: $_potencia cv');
    print('  Tipo: $_tipo');
  }
}
