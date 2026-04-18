import 'cliente.dart';

void main() {
  // 1. Criar cliente original
  Cliente c1 = Cliente('Marina', Endereco('Rua A', 10, 'Curitiba'));
  
  // 2. Criar cópia manual
  Cliente c2 = Cliente.copia(c1);

  // 3. Alterar o endereço de APENAS UM deles
  c2.endereco.alterarRua('Rua B');

  print('Cliente original:');
  c1.exibir(); // Deve continuar sendo Rua A

  print('\nCliente copiado:');
  c2.exibir(); // Deve ser Rua B
}