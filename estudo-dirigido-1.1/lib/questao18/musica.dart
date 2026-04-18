class Musica {
  String _titulo;
  String _artista;
  int _duracaoSegundos;

  Musica(this._titulo, this._artista, this._duracaoSegundos) {
    if (_titulo.isEmpty) print('Erro: titulo nao pode ser vazio.');
    if (_artista.isEmpty) print('Erro: artista nao pode ser vazio.');
    if (_duracaoSegundos <= 0) print('Erro: duracaoSegundos deve ser maior que 0.');
  }

  String get titulo => _titulo;
  String get artista => _artista;
  int get duracaoSegundos => _duracaoSegundos;

  set titulo(String valor) {
    if (valor.isEmpty) { print('Erro: titulo nao pode ser vazio.'); return; }
    _titulo = valor;
  }

  set artista(String valor) {
    if (valor.isEmpty) { print('Erro: artista nao pode ser vazio.'); return; }
    _artista = valor;
  }

  set duracaoSegundos(int valor) {
    if (valor <= 0) { print('Erro: duracaoSegundos deve ser maior que 0.'); return; }
    _duracaoSegundos = valor;
  }

  String formatarDuracao() {
    int min = _duracaoSegundos ~/ 60;
    int seg = _duracaoSegundos % 60;
    return '${min.toString().padLeft(2, '0')}:${seg.toString().padLeft(2, '0')}';
  }

  void exibirMusica() {
    print('  Titulo: $_titulo');
    print('  Artista: $_artista');
    print('  Duracao: ${formatarDuracao()}');
  }
}
