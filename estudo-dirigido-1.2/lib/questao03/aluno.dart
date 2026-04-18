class Aluno {
  // 1. Atributos privados
  String _nome;
  double _nota1;
  double _nota2;

  // 2. Construtor Nomeado Corrigido
  // Usamos nomes "comuns" nos parênteses e passamos para os privados depois dos ":"
  Aluno({
    required String nome,
    required double nota1,
    required double nota2,
  })  : _nome = nome,
        _nota1 = nota1,
        _nota2 = nota2;

  // 3. Método para calcular a média
  void calcularMedia() {
    double media = (_nota1 + _nota2) / 2;
    print("A média do aluno $_nome é: $media");
    
    if (media >= 6.0) {
      print("Resultado: Aprovado!");
    } else {
      print("Resultado: Reprovado.");
    }
  }

  // 4. Método para exibir
  void exibirInformacoes() {
    print("Nome: $_nome | Nota 1: $_nota1 | Nota 2: $_nota2");
  }
}