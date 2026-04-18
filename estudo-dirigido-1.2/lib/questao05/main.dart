import 'conta.dart';

void main() {
  // Testando a Conta Comum (Bancária)
  print("--- TESTE CONTA BANCÁRIA ---");
  var contaComum = Conta.bancaria("123-X", "João Silva");
  contaComum.exibirResumo();
  contaComum.depositar(150.0);
  contaComum.exibirResumo();

  print("\n--- TESTE CONTA VIP ---");
  // Testando a Conta VIP (já começa com saldo)
  var contaVip = Conta.vip("999-Z", "Maria VIP", 5000.0);
  contaVip.exibirResumo();
  contaVip.sacar(1200.0);
  contaVip.exibirResumo();
}