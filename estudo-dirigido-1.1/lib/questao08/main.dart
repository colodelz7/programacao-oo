import 'endereco.dart';

void main() {
  Endereco e1 = Endereco('Rua das Flores', 123, 'Santa Felicidade', 'Curitiba', 'PR', 82035130);
  Endereco e2 = Endereco('Av. Brasil', 500, 'Centro', 'São Paulo', 'SP', 1310100);
  Endereco e3 = Endereco('Rua XV de Novembro', 45, 'Centro', 'Curitiba', 'PR', 80060000);

  e1.exibirEndereco();
  e2.exibirEndereco();
  e3.exibirEndereco();
}
