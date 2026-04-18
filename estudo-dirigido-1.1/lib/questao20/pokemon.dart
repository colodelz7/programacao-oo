class Pokemon {
  int _numero;
  String _nome;
  String _tipo;
  int _nivel;
  int _hp;

  Pokemon(this._numero, this._nome, this._tipo, this._nivel, this._hp) {
    if (_nome.isEmpty) print('Erro: nome nao pode ser vazio.');
    if (_tipo.isEmpty) print('Erro: tipo nao pode ser vazio.');
    if (_nivel < 1 || _nivel > 100) print('Erro: nivel deve estar entre 1 e 100.');
    if (_hp <= 0) print('Erro: hp deve ser maior que 0.');
  }

  int get numero => _numero;
  String get nome => _nome;
  String get tipo => _tipo;
  int get nivel => _nivel;
  int get hp => _hp;

  set nivel(int valor) {
    if (valor < 1 || valor > 100) { print('Erro: nivel deve estar entre 1 e 100.'); return; }
    _nivel = valor;
  }

  set hp(int valor) {
    if (valor <= 0) { print('Erro: hp deve ser maior que 0.'); return; }
    _hp = valor;
  }

  void exibirPokemon() {
    print('  #${_numero.toString().padLeft(3, '0')} $_nome');
    print('  Tipo: $_tipo | Nivel: $_nivel | HP: $_hp');
  }
}
