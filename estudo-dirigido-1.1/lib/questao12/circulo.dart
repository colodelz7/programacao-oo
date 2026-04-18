class Circulo {
  static const double pi = 3.14;

  double _raio;
  String _cor;

  Circulo(this._raio, this._cor) {
    if (_raio <= 0) print('Erro: raio deve ser maior que 0.');
    if (_cor.isEmpty) print('Erro: cor nao pode ser vazia.');
  }

  double get raio => _raio;
  String get cor => _cor;

  set raio(double valor) {
    if (valor <= 0) { print('Erro: raio deve ser maior que 0.'); return; }
    _raio = valor;
  }

  set cor(String valor) {
    if (valor.isEmpty) { print('Erro: cor nao pode ser vazia.'); return; }
    _cor = valor;
  }

  double calcularArea() {
    return pi * _raio * _raio;
  }

  double calcularPerimetro() {
    return 2 * pi * _raio;
  }

  void exibirResumo() {
    print('Raio: $_raio');
    print('Cor: $_cor');
    print('Area: ${calcularArea().toStringAsFixed(2)}');
    print('Perimetro: ${calcularPerimetro().toStringAsFixed(2)}');
    print('---');
  }
}
