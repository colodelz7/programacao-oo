import 'lampada.dart';

void main() {
  // Criando o objeto da lâmpada
  Lampada minhaLampada = Lampada();

  print("--- Teste da Questão 1 ---");
  
  // Mostra como ela começa (conforme o construtor)
  minhaLampada.exibirEstado();

  // Testando os métodos
  minhaLampada.ligar();
  minhaLampada.aumentar();

  print("\n--- Após ligar e aumentar ---");
  minhaLampada.exibirEstado();
}