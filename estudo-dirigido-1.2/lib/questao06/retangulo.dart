// Arquivo com a classe Retangulo
 
class Retangulo {
  // Atributos privados
  double _largura = 0;
  double _altura = 0;
 
  // Construtor padrão com parâmetros
  Retangulo(double largura, double altura) {
    _largura = largura;
    _altura = altura;
  }
 
  // Construtor sem parâmetros - cria um quadrado 1x1
  Retangulo.unitario() {
    _largura = 1;
    _altura = 1;
  }
 
  // Construtor nomeado para criar um quadrado com lado informado
  Retangulo.quadrado(double lado) {
    _largura = lado;
    _altura = lado;
  }
 
  // Método para calcular a área (largura * altura)
  double calcularArea() {
    return _largura * _altura;
  }
 
  // Método para calcular o perímetro (soma dos 4 lados)
  double calcularPerimetro() {
    return 2 * (_largura + _altura);
  }
 
  // Método para exibir os dados do retângulo
  void exibirDados() {
    print('--- Dados do Retângulo ---');
    print('Largura: $_largura');
    print('Altura: $_altura');
    print('Área: ${calcularArea()}');
    print('Perímetro: ${calcularPerimetro()}');
  }
}