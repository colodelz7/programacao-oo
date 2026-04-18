import 'personagem.dart';

void main() {
  // Instanciando o primeiro objeto
  Personagem p1 = Personagem('Arthas', 100, 80);
  
  // Atribuindo a mesma instância para a segunda variável
  // Aqui, p2 não é um novo personagem, é apenas um "apelido" para o p1
  Personagem p2 = p1;

  print('--- Antes da alteração ---');
  p1.exibir();
  p2.exibir();

  // Alterando a vida usando a segunda variável (p2)
  p2.alterarVida(50);

  print('\n--- Depois da alteração ---');
  p1.exibir(); // p1 também vai mostrar 50 de vida!
  p2.exibir();
}