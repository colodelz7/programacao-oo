class Comodo {
  String _nome;
  double _tamanho;

  Comodo(this._nome, this._tamanho) {
    if (_nome.isEmpty) print('Erro: nome do comodo nao pode ser vazio.');
    if (_tamanho <= 0) print('Erro: tamanho deve ser maior que 0.');
  }

  String get nome => _nome;
  double get tamanho => _tamanho;

  set nome(String valor) {
    if (valor.isEmpty) { print('Erro: nome nao pode ser vazio.'); return; }
    _nome = valor;
  }

  set tamanho(double valor) {
    if (valor <= 0) { print('Erro: tamanho deve ser maior que 0.'); return; }
    _tamanho = valor;
  }

  void exibirComodo() {
    print('  Comodo: $_nome | Tamanho: ${_tamanho.toStringAsFixed(1)} m²');
  }
}
