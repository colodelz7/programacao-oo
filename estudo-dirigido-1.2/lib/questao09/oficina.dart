import 'carro.dart';

class Oficina {
  void revisar(Carro carro) {
    // Simula um teste de rodagem aumentando a quilometragem
    carro.quilometragem += 100; 
    print("Revisão concluída! O carro rodou mais 100km no teste.");
  }
}