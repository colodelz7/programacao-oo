class Caixa {
  int _valor;

  Caixa(this._valor);

  // Getter e Setter para o valor
  int get valor => _valor;
  set valor(int novoValor) => _valor = novoValor;

  void exibir() {
    print("Valor na Caixa: $_valor");
  }
}