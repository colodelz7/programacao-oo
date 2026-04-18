class Pessoa {
  String _nome;
  int _idade;

  Pessoa(this._nome, this._idade) {
    if (_nome.isEmpty) print('Erro: nome nao pode ser vazio.');
    if (_idade < 0) print('Erro: idade deve ser maior ou igual a 0.');
  }

  String get nome => _nome;
  int get idade => _idade;

  set nome(String valor) {
    if (valor.isEmpty) {
      print('Erro: nome nao pode ser vazio.');
      return;
    }
    _nome = valor;
  }

  set idade(int valor) {
    if (valor < 0) {
      print('Erro: idade deve ser maior ou igual a 0.');
      return;
    }
    _idade = valor;
  }

  void exibirDados() {
    print('Nome: $_nome');
    print('Idade: $_idade anos');
    print('---');
  }
}
