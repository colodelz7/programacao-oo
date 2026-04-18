class Endereco {
  String _rua;
  int _numero;
  String _bairro;
  String _cidade;
  String _estado;
  int _cep;

  Endereco(this._rua, this._numero, this._bairro, this._cidade, this._estado, this._cep) {
    if (_rua.isEmpty) print('Erro: rua nao pode ser vazia.');
    if (_numero <= 0) print('Erro: numero deve ser maior que 0.');
    if (_bairro.isEmpty) print('Erro: bairro nao pode ser vazio.');
    if (_cidade.isEmpty) print('Erro: cidade nao pode ser vazia.');
    if (_estado.isEmpty) print('Erro: estado nao pode ser vazio.');
  }

  String get rua => _rua;
  int get numero => _numero;
  String get bairro => _bairro;
  String get cidade => _cidade;
  String get estado => _estado;
  int get cep => _cep;

  set rua(String valor) {
    if (valor.isEmpty) { print('Erro: rua nao pode ser vazia.'); return; }
    _rua = valor;
  }

  set numero(int valor) {
    if (valor <= 0) { print('Erro: numero deve ser maior que 0.'); return; }
    _numero = valor;
  }

  set bairro(String valor) {
    if (valor.isEmpty) { print('Erro: bairro nao pode ser vazio.'); return; }
    _bairro = valor;
  }

  set cidade(String valor) {
    if (valor.isEmpty) { print('Erro: cidade nao pode ser vazia.'); return; }
    _cidade = valor;
  }

  set estado(String valor) {
    if (valor.isEmpty) { print('Erro: estado nao pode ser vazio.'); return; }
    _estado = valor;
  }

  set cep(int valor) {
    _cep = valor;
  }

  String formatarCep() {
    String cepStr = _cep.toString().padLeft(8, '0');
    return '${cepStr.substring(0, 5)}-${cepStr.substring(5)}';
  }

  void exibirEndereco() {
    print('Rua: $_rua, $_numero');
    print('Bairro: $_bairro');
    print('Cidade: $_cidade - $_estado');
    print('CEP: ${formatarCep()}');
    print('---');
  }
}
