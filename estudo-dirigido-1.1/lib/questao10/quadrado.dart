class Quadrado {
  double _lado;
  String _caractere;

  Quadrado(this._lado, this._caractere) {
    if (_lado <= 0) print('Erro: lado deve ser maior que 0.');
    if (_caractere.isEmpty) print('Erro: caractere nao pode ser vazio.');
    if (_caractere.length > 1) print('Erro: caractere deve ter apenas 1 simbolo.');
  }

  double get lado => _lado;
  String get caractere => _caractere;

  set lado(double valor) {
    if (valor <= 0) { print('Erro: lado deve ser maior que 0.'); return; }
    _lado = valor;
  }

  set caractere(String valor) {
    if (valor.isEmpty || valor.length > 1) { print('Erro: caractere invalido.'); return; }
    _caractere = valor;
  }

  double calcularArea() {
    return _lado * _lado;
  }

  double calcularPerimetro() {
    return _lado * 4;
  }

  void desenhar() {
    int tamanho = _lado.toInt();
    for (int i = 0; i < tamanho; i++) {
      String linha = '';
      for (int j = 0; j < tamanho; j++) {
        linha = linha + _caractere + ' ';
      }
      print(linha);
    }
  }

  void exibirResumo() {
    print('Lado: $_lado');
    print('Area: ${calcularArea()}');
    print('Perimetro: ${calcularPerimetro()}');
    print('---');
  }

  bool ehIgual(Quadrado outro) {
    return _lado == outro._lado;
  }
}
