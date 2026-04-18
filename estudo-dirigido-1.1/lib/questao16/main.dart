import 'personagem.dart';

void main() {
  Personagem heroi = Personagem('Herói', 100, 25);
  Personagem vilao = Personagem('Vilão', 80, 15);

  print('=== Status Inicial ===');
  heroi.exibirStatus();
  vilao.exibirStatus();

  print('=== Combate ===');
  heroi.atacar(vilao);
  vilao.atacar(heroi);
  heroi.atacar(vilao);
  vilao.atacar(heroi);
  heroi.atacar(vilao);
  heroi.atacar(vilao);

  print('\n=== Status Final ===');
  heroi.exibirStatus();
  vilao.exibirStatus();
}
