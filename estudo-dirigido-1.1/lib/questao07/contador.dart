class Contador {
  int _valor;

  Contador(this._valor) {
    if (_valor < 0) {
      print('Erro: valor inicial deve ser maior ou igual a 0.');
      _valor = 0;
    }
  }

  int get valor => _valor;

  void incrementar() {
    _valor++;
    print('Incrementado. Valor atual: $_valor');
  }

  void decrementar() {
    if (_valor == 0) {
      print('Valor ja e 0. Nao pode ficar negativo.');
      return;
    }
    _valor--;
    print('Decrementado. Valor atual: $_valor');
  }

  void zerar() {
    _valor = 0;
    print('Contador zerado.');
  }

  void exibirValor() {
    print('Valor atual: $_valor');
    print('---');
  }
}
