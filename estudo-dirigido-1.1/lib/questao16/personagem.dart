class Personagem {
  String _nome;
  int _vida;
  int _ataque;

  Personagem(this._nome, this._vida, this._ataque) {
    if (_nome.isEmpty) print('Erro: nome nao pode ser vazio.');
    if (_vida <= 0) print('Erro: vida deve ser maior que 0.');
    if (_ataque <= 0) print('Erro: ataque deve ser maior que 0.');
  }

  String get nome => _nome;
  int get vida => _vida;
  int get ataque => _ataque;

  bool estaVivo() {
    return _vida > 0;
  }

  void atacar(Personagem inimigo) {
    if (!estaVivo()) {
      print('$_nome esta morto e nao pode atacar!');
      return;
    }
    if (!inimigo.estaVivo()) {
      print('${inimigo._nome} ja esta morto!');
      return;
    }
    inimigo._vida = inimigo._vida - _ataque;
    if (inimigo._vida < 0) inimigo._vida = 0;
    print('$_nome atacou ${inimigo._nome} causando $_ataque de dano! Vida restante de ${inimigo._nome}: ${inimigo._vida}');
  }

  void exibirStatus() {
    print('Nome: $_nome');
    print('Vida: $_vida');
    print('Ataque: $_ataque');
    print('Status: ${estaVivo() ? "Vivo" : "Morto"}');
    print('---');
  }
}
