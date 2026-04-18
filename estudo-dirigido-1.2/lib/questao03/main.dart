import 'aluno.dart';

void main() {
  // Criando o aluno usando nomes nos parâmetros (Questão 3)
  // A vantagem é que a ordem não importa aqui!
  Aluno meuAluno = Aluno(
    nome: "Carlos Silva",
    nota1: 8.5,
    nota2: 7.0,
  );

  meuAluno.exibirInformacoes();
  meuAluno.calcularMedia();
}