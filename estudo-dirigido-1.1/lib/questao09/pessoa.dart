import '../questao08/endereco.dart';

class Pessoa {
  String _nome;
  int _idade;
  String _cpf;
  Endereco _endereco;

  Pessoa(this._nome, this._idade, this._cpf, this._endereco) {
    if (_nome.isEmpty) print('Erro: nome nao pode ser vazio.');
    if (_idade < 0) print('Erro: idade deve ser maior ou igual a 0.');
    if (_cpf.isEmpty) print('Erro: cpf nao pode ser vazio.');
  }

  String get nome => _nome;
  int get idade => _idade;
  String get cpf => _cpf;
  Endereco get endereco => _endereco;

  set nome(String valor) {
    if (valor.isEmpty) { print('Erro: nome nao pode ser vazio.'); return; }
    _nome = valor;
  }

  set idade(int valor) {
    if (valor < 0) { print('Erro: idade deve ser maior ou igual a 0.'); return; }
    _idade = valor;
  }

  set cpf(String valor) {
    if (valor.isEmpty) { print('Erro: cpf nao pode ser vazio.'); return; }
    _cpf = valor;
  }

  set endereco(Endereco valor) {
    _endereco = valor;
  }

  void exibirPessoa() {
    print('Nome: $_nome');
    print('Idade: $_idade anos');
    print('CPF: $_cpf');
    print('Endereco:');
    _endereco.exibirEndereco();
  }
}
