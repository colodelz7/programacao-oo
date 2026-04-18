import 'semaforo.dart';

void main() {
  Semaforo s = Semaforo('vermelho', 5);

  print('=== Simulacao do Semaforo ===');
  s.exibirEstado();

  for (int i = 0; i < 15; i++) {
    s.reduzirTempo();
    s.exibirEstado();
  }
}
