// lib/questao08/main.dart
import 'televisao.dart';
import 'controle.dart'; // Nome do arquivo que aparece na sua imagem

void main() {
  Televisao tv = Televisao(5, 20);
  
  // ControleRemoto com C e R maiúsculos (nome da Classe)
  ControleRemoto controle = ControleRemoto(tv); 

  print('Estado inicial:');
  tv.exibir();

  controle.aumentarVolume();
  controle.proximoCanal();

  print('\nDepois de usar o controle:');
  tv.exibir();
}