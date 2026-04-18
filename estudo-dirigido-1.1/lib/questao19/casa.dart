import 'comodo.dart';

class Casa {
  String _proprietario;
  Comodo _comodo1;
  Comodo _comodo2;
  Comodo _comodo3;

  Casa(this._proprietario, this._comodo1, this._comodo2, this._comodo3) {
    if (_proprietario.isEmpty) print('Erro: proprietario nao pode ser vazio.');
  }

  String get proprietario => _proprietario;
  Comodo get comodo1 => _comodo1;
  Comodo get comodo2 => _comodo2;
  Comodo get comodo3 => _comodo3;

  set proprietario(String valor) {
    if (valor.isEmpty) { print('Erro: proprietario nao pode ser vazio.'); return; }
    _proprietario = valor;
  }

  double calcularAreaTotal() {
    return _comodo1.tamanho + _comodo2.tamanho + _comodo3.tamanho;
  }

  void exibirCasa() {
    print('Proprietario: $_proprietario');
    print('Area total: ${calcularAreaTotal().toStringAsFixed(1)} m²');
    print('Comodos:');
    _comodo1.exibirComodo();
    _comodo2.exibirComodo();
    _comodo3.exibirComodo();
    print('---');
  }
}
