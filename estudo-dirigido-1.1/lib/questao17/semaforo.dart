class Semaforo {
  String _corAtual;
  int _tempoRestante;

  Semaforo(this._corAtual, this._tempoRestante) {
    if (_corAtual != 'vermelho' && _corAtual != 'verde' && _corAtual != 'amarelo') {
      print('Erro: cor deve ser vermelho, verde ou amarelo.');
    }
  }

  String get corAtual => _corAtual;
  int get tempoRestante => _tempoRestante;

  int _tempoParaCor(String cor) {
    if (cor == 'vermelho') return 5;
    if (cor == 'verde') return 4;
    return 2;
  }

  String _proximaCor() {
    if (_corAtual == 'vermelho') return 'verde';
    if (_corAtual == 'verde') return 'amarelo';
    return 'vermelho';
  }

  String _emoji() {
    if (_corAtual == 'vermelho') return '🔴';
    if (_corAtual == 'verde') return '🟢';
    return '🟡';
  }

  void trocarCor() {
    _corAtual = _proximaCor();
    _tempoRestante = _tempoParaCor(_corAtual);
    print('Cor trocada para: ${_emoji()} $_corAtual (tempo: $_tempoRestante)');
  }

  void reduzirTempo() {
    _tempoRestante--;
    if (_tempoRestante <= 0) {
      trocarCor();
    }
  }

  void exibirEstado() {
    print('Cor: ${_emoji()} $_corAtual | Tempo restante: $_tempoRestante');
  }
}
