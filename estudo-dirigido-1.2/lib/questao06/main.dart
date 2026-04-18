// Arquivo principal - apenas instancia e usa a classe Retangulo
import 'retangulo.dart';
 
void main() {
  // Usando o construtor padrão
  Retangulo r1 = Retangulo(5, 3);
 
  // Usando o construtor sem parâmetros (quadrado 1x1)
  Retangulo r2 = Retangulo.unitario();
 
  // Usando o construtor nomeado quadrado
  Retangulo r3 = Retangulo.quadrado(4);
 
  print('Retângulo normal:');
  r1.exibirDados();
 
  print('');
  print('Retângulo 1x1:');
  r2.exibirDados();
 
  print('');
  print('Quadrado de lado 4:');
  r3.exibirDados();
}