class Aluno {
  String _nome;
  double _nota1;
  double _nota2;

  Aluno(this._nome, this._nota1, this._nota2) {
    if (_nota1 < 0 || _nota1 > 10) print('Erro: nota1 deve estar entre 0 e 10.');
    if (_nota2 < 0 || _nota2 > 10) print('Erro: nota2 deve estar entre 0 e 10.');
  }

  String get nome => _nome;
  double get nota1 => _nota1;
  double get nota2 => _nota2;

  set nota1(double valor) {
    if (valor < 0 || valor > 10) { print('Erro: nota1 deve estar entre 0 e 10.'); return; }
    _nota1 = valor;
  }

  set nota2(double valor) {
    if (valor < 0 || valor > 10) { print('Erro: nota2 deve estar entre 0 e 10.'); return; }
    _nota2 = valor;
  }

  double calcularMedia() {
    return (_nota1 + _nota2) / 2;
  }

  String verificarAprovacao() {
    if (calcularMedia() >= 6) return 'Aprovado';
    return 'Reprovado';
  }

  void exibirBoletim() {
    print('Aluno: $_nome');
    print('Nota 1: $_nota1');
    print('Nota 2: $_nota2');
    print('Media: ${calcularMedia().toStringAsFixed(1)}');
    print('Situacao: ${verificarAprovacao()}');
    print('---');
  }
}
