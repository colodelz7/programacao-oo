class Relogio {
  int _hora;
  int _minuto;
  int _segundo;

  Relogio(this._hora, this._minuto, this._segundo) {
    if (_hora < 0 || _hora > 23) print('Erro: hora deve estar entre 0 e 23.');
    if (_minuto < 0 || _minuto > 59) print('Erro: minuto deve estar entre 0 e 59.');
    if (_segundo < 0 || _segundo > 59) print('Erro: segundo deve estar entre 0 e 59.');
  }

  int get hora => _hora;
  int get minuto => _minuto;
  int get segundo => _segundo;

  set hora(int valor) {
    if (valor < 0 || valor > 23) { print('Erro: hora deve estar entre 0 e 23.'); return; }
    _hora = valor;
  }

  set minuto(int valor) {
    if (valor < 0 || valor > 59) { print('Erro: minuto deve estar entre 0 e 59.'); return; }
    _minuto = valor;
  }

  set segundo(int valor) {
    if (valor < 0 || valor > 59) { print('Erro: segundo deve estar entre 0 e 59.'); return; }
    _segundo = valor;
  }

  void exibirHorario() {
    String h = _hora.toString().padLeft(2, '0');
    String m = _minuto.toString().padLeft(2, '0');
    String s = _segundo.toString().padLeft(2, '0');
    print('Horario: $h:$m:$s');
    print('---');
  }
}
