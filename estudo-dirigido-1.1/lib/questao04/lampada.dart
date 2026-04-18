class Lampada {
  bool _ligada;
  int _quantidadeLigacoes;
  bool _queimada;

  Lampada()
      : _ligada = false,
        _quantidadeLigacoes = 0,
        _queimada = false;

  bool get ligada => _ligada;
  int get quantidadeLigacoes => _quantidadeLigacoes;
  bool get queimada => _queimada;

  void ligar() {
    if (_queimada) {
      print('Lampada queimada! Nao pode ser ligada.');
      return;
    }
    if (_ligada) {
      print('Lampada ja esta ligada.');
      return;
    }
    _ligada = true;
    _quantidadeLigacoes++;
    print('Lampada ligada. (Total de ligacoes: $_quantidadeLigacoes)');
    if (_quantidadeLigacoes >= 5) {
      _queimada = true;
      _ligada = false;
      print('Lampada queimou apos $_quantidadeLigacoes ligacoes!');
    }
  }

  void desligar() {
    if (!_ligada) {
      print('Lampada ja esta desligada.');
      return;
    }
    _ligada = false;
    print('Lampada desligada.');
  }

  void exibirEstado() {
    if (_queimada) {
      print('Estado: QUEIMADA');
    } else if (_ligada) {
      print('Estado: LIGADA');
    } else {
      print('Estado: DESLIGADA');
    }
    print('Quantidade de ligacoes: $_quantidadeLigacoes');
    print('---');
  }
}
