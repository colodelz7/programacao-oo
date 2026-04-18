class Produto {
  String _nome;
  double _preco;
  int _estoque;
  bool _ativo;

  Produto(this._nome, this._preco, this._estoque, this._ativo);

  String get nome => _nome;
  double get preco => _preco;
  int get estoque => _estoque;
  bool get ativo => _ativo;

  set nome(String valor) {
    if (valor.isEmpty) {
      print('Aviso: Nome não pode ser vazio.');
    } else {
      _nome = valor;
    }
  }

  set preco(double valor) {
    if (valor < 0) {
      print('Aviso: Preço não pode ser negativo.');
    } else {
      _preco = valor;
    }
  }

  set estoque(int valor) {
    if (valor < 0) {
      print('Aviso: Estoque não pode ser negativo.');
    } else {
      _estoque = valor;
    }
  }

  set ativo(bool valor) => _ativo = valor;

  void ativar() => _ativo = true;
  void desativar() => _ativo = false;

  void reporEstoque(int quantidade) {
    if (quantidade <= 0) {
      print('Aviso: Quantidade deve ser positiva.');
    } else {
      _estoque += quantidade;
    }
  }

  void retirarEstoque(int quantidade) {
    if (quantidade <= 0) {
      print('Aviso: Quantidade deve ser positiva.');
    } else if (quantidade > _estoque) {
      print('Aviso: Estoque insuficiente.');
    } else {
      _estoque -= quantidade;
    }
  }

  void exibirProduto() {
    print('Nome: $_nome');
    print('Preço: R\$ ${_preco.toStringAsFixed(2)}');
    print('Estoque: $_estoque');
    print('Ativo: $_ativo');
    print('-------------------');
  }
}