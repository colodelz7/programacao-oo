import 'dart:math';

class Triangulo {
  double _lado1;
  double _lado2;
  double _lado3;
  String _caractere;

  Triangulo(this._lado1, this._lado2, this._lado3, this._caractere) {
    if (_lado1 <= 0 || _lado2 <= 0 || _lado3 <= 0) {
      print('Erro: todos os lados devem ser maiores que 0.');
    }
    if (!_ehValido()) {
      print('Erro: os lados nao formam um triangulo valido.');
    }
    if (_caractere.isEmpty) print('Erro: caractere nao pode ser vazio.');
    if (_caractere.length > 1) print('Erro: caractere deve ter apenas 1 simbolo.');
  }

  double get lado1 => _lado1;
  double get lado2 => _lado2;
  double get lado3 => _lado3;
  String get caractere => _caractere;

  set alterarLado1(double valor) {
    if (valor <= 0) { print('Erro: lado deve ser maior que 0.'); return; }
    _lado1 = valor;
  }

  set alterarLado2(double valor) {
    if (valor <= 0) { print('Erro: lado deve ser maior que 0.'); return; }
    _lado2 = valor;
  }

  set alterarLado3(double valor) {
    if (valor <= 0) { print('Erro: lado deve ser maior que 0.'); return; }
    _lado3 = valor;
  }

  bool _ehValido() {
    return (_lado1 + _lado2 > _lado3) &&
        (_lado1 + _lado3 > _lado2) &&
        (_lado2 + _lado3 > _lado1);
  }

  double calcularPerimetro() {
    return _lado1 + _lado2 + _lado3;
  }

  double calcularArea() {
    double s = calcularPerimetro() / 2;
    return sqrt(s * (s - _lado1) * (s - _lado2) * (s - _lado3));
  }

  void desenharEsquerda() {
    int linhas = _lado1.toInt();
    for (int i = 1; i <= linhas; i++) {
      String linha = '';
      for (int j = 0; j < i; j++) {
        linha = linha + _caractere + ' ';
      }
      print(linha);
    }
  }

  void desenharCentralizado() {
    int linhas = _lado1.toInt();
    for (int i = 1; i <= linhas; i++) {
      String espacos = '';
      for (int s = 0; s < linhas - i; s++) {
        espacos = espacos + '  ';
      }
      String simbolos = '';
      for (int j = 0; j < i; j++) {
        simbolos = simbolos + _caractere + ' ';
      }
      print(espacos + simbolos);
    }
  }

  void exibirResumo() {
    print('Lado 1: $_lado1');
    print('Lado 2: $_lado2');
    print('Lado 3: $_lado3');
    print('Area: ${calcularArea().toStringAsFixed(2)}');
    print('Perimetro: ${calcularPerimetro().toStringAsFixed(2)}');
    print('---');
  }
}
