import 'pokemon.dart';

class Treinador {
  String _nome;
  Pokemon _pokemon1;
  Pokemon _pokemon2;
  Pokemon _pokemon3;

  Treinador(this._nome, this._pokemon1, this._pokemon2, this._pokemon3) {
    if (_nome.isEmpty) print('Erro: nome do treinador nao pode ser vazio.');
  }

  String get nome => _nome;
  Pokemon get pokemon1 => _pokemon1;
  Pokemon get pokemon2 => _pokemon2;
  Pokemon get pokemon3 => _pokemon3;

  set nome(String valor) {
    if (valor.isEmpty) { print('Erro: nome nao pode ser vazio.'); return; }
    _nome = valor;
  }

  int calcularPoderTotal() {
    return _pokemon1.nivel + _pokemon2.nivel + _pokemon3.nivel;
  }

  void pokemonMaisForte() {
    Pokemon mais = _pokemon1;
    if (_pokemon2.nivel > mais.nivel) mais = _pokemon2;
    if (_pokemon3.nivel > mais.nivel) mais = _pokemon3;
    print('Pokemon mais forte: ${mais.nome} (Nivel ${mais.nivel})');
  }

  void exibirTime() {
    print('Treinador: $_nome');
    print('Poder total do time: ${calcularPoderTotal()}');
    print('Time:');
    _pokemon1.exibirPokemon();
    _pokemon2.exibirPokemon();
    _pokemon3.exibirPokemon();
    pokemonMaisForte();
    print('---');
  }
}
