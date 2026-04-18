// lib/questao08/controle.dart
import 'televisao.dart';

class ControleRemoto { // A Classe começa com C maiúsculo
  Televisao _tv;

  ControleRemoto(this._tv);

  void aumentarVolume() => _tv.setVolume(_tv.volume + 1);
  void diminuirVolume() => _tv.setVolume(_tv.volume - 1);
  void proximoCanal() => _tv.setCanal(_tv.canal + 1);
  void canalAnterior() => _tv.setCanal(_tv.canal - 1);
}