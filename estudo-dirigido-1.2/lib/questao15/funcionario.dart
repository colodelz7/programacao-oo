class Funcionario {
  String _nome;
  String _cargo;
  double _salario;

  // Construtor Nomeado: Estagiário (Cargo fixo e sem salário inicial definido)
  Funcionario.estagiario(this._nome)
      : _cargo = 'Estagiário',
        _salario = 800.0;

  // Construtor Nomeado: Pleno (Cargo fixo, salário informado)
  Funcionario.pleno(this._nome, this._salario) : _cargo = 'Pleno';

  // Construtor Nomeado: Gerente (Usa parâmetros nomeados e bônus)
  Funcionario.gerente({required String nome, double bonus = 1000})
      : _nome = nome,
        _cargo = 'Gerente',
        _salario = 5000.0 + bonus;

  double calcularPagamentoMensal() {
    return _salario;
  }

  void exibirDados() {
    print("Nome: $_nome | Cargo: $_cargo | Salário: R\$ ${_salario.toStringAsFixed(2)}");
  }
}