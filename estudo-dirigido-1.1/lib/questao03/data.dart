class Data {
  int _dia;
  int _mes;
  int _ano;

  Data(this._dia, this._mes, this._ano) {
    if (_dia < 1 || _dia > 31) print('Erro: dia deve estar entre 1 e 31.');
    if (_mes < 1 || _mes > 12) print('Erro: mes deve estar entre 1 e 12.');
    if (_ano <= 0) print('Erro: ano deve ser maior que 0.');
  }

  int get dia => _dia;
  int get mes => _mes;
  int get ano => _ano;

  set dia(int valor) {
    if (valor < 1 || valor > 31) { print('Erro: dia deve estar entre 1 e 31.'); return; }
    _dia = valor;
  }

  set mes(int valor) {
    if (valor < 1 || valor > 12) { print('Erro: mes deve estar entre 1 e 12.'); return; }
    _mes = valor;
  }

  set ano(int valor) {
    if (valor <= 0) { print('Erro: ano deve ser maior que 0.'); return; }
    _ano = valor;
  }

  void exibirData() {
    String d = _dia.toString().padLeft(2, '0');
    String m = _mes.toString().padLeft(2, '0');
    String a = _ano.toString().padLeft(4, '0');
    print('Data: $d/$m/$a');
    print('---');
  }
}
