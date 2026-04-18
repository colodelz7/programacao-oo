import 'motor.dart';

class Carro {
  String _modelo;
  Motor _motor;

  Carro(this._modelo, this._motor) {
    if (_modelo.isEmpty) print('Erro: modelo nao pode ser vazio.');
  }

  String get modelo => _modelo;
  Motor get motor => _motor;

  set modelo(String valor) {
    if (valor.isEmpty) { print('Erro: modelo nao pode ser vazio.'); return; }
    _modelo = valor;
  }

  set motor(Motor valor) {
    _motor = valor;
  }

  void exibirCarro() {
    print('Modelo: $_modelo');
    print('Motor:');
    _motor.exibirMotor();
    print('---');
  }
}
