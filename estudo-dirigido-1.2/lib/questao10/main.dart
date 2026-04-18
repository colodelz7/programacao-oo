import 'caixa.dart';

// Modifica o objeto que recebeu
void alterarValor(Caixa c) {
  c.valor = 50; 
}

// Tenta substituir o objeto por um novo
void trocarCaixa(Caixa c) {
  c = Caixa(100); 
}

void main() {
  Caixa minhaCaixa = Caixa(10);

  print('Estado inicial:');
  minhaCaixa.exibir();

  // Teste 1: Alterar valor
  alterarValor(minhaCaixa);
  print('\nDepois de alterarValor:');
  minhaCaixa.exibir(); // Vai imprimir 50

  // Teste 2: Trocar caixa
  trocarCaixa(minhaCaixa);
  print('\nDepois de trocarCaixa:');
  minhaCaixa.exibir(); // AINDA vai imprimir 50!
}