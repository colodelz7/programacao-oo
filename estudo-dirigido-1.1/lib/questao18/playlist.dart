import 'musica.dart';

class Playlist {
  String _nome;
  Musica _musica1;
  Musica _musica2;
  Musica _musica3;

  Playlist(this._nome, this._musica1, this._musica2, this._musica3) {
    if (_nome.isEmpty) print('Erro: nome da playlist nao pode ser vazio.');
  }

  String get nome => _nome;
  Musica get musica1 => _musica1;
  Musica get musica2 => _musica2;
  Musica get musica3 => _musica3;

  set nome(String valor) {
    if (valor.isEmpty) { print('Erro: nome nao pode ser vazio.'); return; }
    _nome = valor;
  }

  int calcularDuracaoTotal() {
    return _musica1.duracaoSegundos + _musica2.duracaoSegundos + _musica3.duracaoSegundos;
  }

  String _formatarDuracaoTotal() {
    int total = calcularDuracaoTotal();
    int min = total ~/ 60;
    int seg = total % 60;
    return '${min.toString().padLeft(2, '0')}:${seg.toString().padLeft(2, '0')}';
  }

  void exibirPlaylist() {
    print('Playlist: $_nome');
    print('Duracao total: ${_formatarDuracaoTotal()}');
    print('Musicas:');
    _musica1.exibirMusica();
    _musica2.exibirMusica();
    _musica3.exibirMusica();
    print('---');
  }

  void tocarPlaylist() {
    print('Tocando playlist: $_nome');
    print('▶ ${_musica1.titulo} - ${_musica1.artista}');
    print('▶ ${_musica2.titulo} - ${_musica2.artista}');
    print('▶ ${_musica3.titulo} - ${_musica3.artista}');
    print('---');
  }
}
