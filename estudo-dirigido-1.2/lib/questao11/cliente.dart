class Endereco {
  String _rua;
  int _numero;
  String _cidade;

  Endereco(this._rua, this._numero, this._cidade);

  // Getters para facilitar o acesso
  String get rua => _rua;
  int get numero => _numero;
  String get cidade => _cidade;

  void alterarRua(String novaRua) => _rua = novaRua;

  @override
  String toString() => "$_rua, $_numero - $_cidade";
}

class Cliente {
  String _nome;
  Endereco _endereco;

  Cliente(this._nome, this._endereco);

  // CONSTRUTOR NOMEADO PARA CÓPIA (O segredo da questão)
  Cliente.copia(Cliente outro) 
    : _nome = outro._nome,
      _endereco = Endereco(outro._endereco.rua, outro._endereco.numero, outro._endereco.cidade);

  Endereco get endereco => _endereco;

  void exibir() {
    print("Cliente: $_nome | Endereço: $_endereco");
  }
}