import 'pessoa.dart';
import '../questao08/endereco.dart';

void main() {
  Endereco end1 = Endereco('Rua das Flores', 123, 'Santa Felicidade', 'Curitiba', 'PR', 82035130);
  Endereco end2 = Endereco('Av. Brasil', 500, 'Centro', 'São Paulo', 'SP', 1310100);
  Endereco end3 = Endereco('Rua XV de Novembro', 45, 'Centro', 'Curitiba', 'PR', 80060000);

  Pessoa p1 = Pessoa('Ana Silva', 25, '123.456.789-00', end1);
  Pessoa p2 = Pessoa('Carlos Souza', 30, '987.654.321-00', end2);
  Pessoa p3 = Pessoa('Maria Oliveira', 17, '111.222.333-44', end3);

  p1.exibirPessoa();
  p2.exibirPessoa();
  p3.exibirPessoa();
}
