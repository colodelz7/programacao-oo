class CupomDesconto {
  String _codigo;
  double _percentual;
  bool _ativo;

  CupomDesconto(this._codigo, this._percentual, this._ativo);

  String get codigo => _codigo;
  double get percentual => _percentual;
  bool get ativo => _ativo;

  set codigo(String valor) {
    if (valor.isEmpty) {
      print('Aviso: Código não pode ser vazio.');
    } else {
      _codigo = valor;
    }
  }

  set percentual(double valor) {
    if (valor < 0 || valor > 100) {
      print('Aviso: Percentual deve estar entre 0 e 100.');
    } else {
      _percentual = valor;
    }
  }

  set ativo(bool valor) => _ativo = valor;

  void ativar() => _ativo = true;
  void desativar() => _ativo = false;

  double calcularDesconto(double valor) {
    double desconto = valor * (_percentual / 100);
    return valor - desconto;
  }

  void exibirCupom() {
    print('Código: $_codigo');
    print('Percentual: $_percentual%');
    print('Ativo: $_ativo');
    print('-------------------');
  }
}