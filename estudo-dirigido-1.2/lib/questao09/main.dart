import 'carro.dart';
import 'oficina.dart';

void main() {
  Carro meuCarro = Carro('Fusca', 12000);
  Oficina oficina = Oficina();

  print('Antes da revisão:');
  meuCarro.exibir();

  // Passamos o objeto meuCarro para o método da oficina
  oficina.revisar(meuCarro);

  print('\nDepois da revisão:');
  meuCarro.exibir();
}