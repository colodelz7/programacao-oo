import 'usuario.dart';

void main() {
  print("--- Teste Questão 4 ---");

  // Teste 1: Informando o apelido
  Usuario user1 = Usuario("Giovanni Silva", "giovanni@email.com", "Gio");
  user1.exibirPerfil();

  // Teste 2: NÃO informando o apelido (deve usar o nome como apelido)
  Usuario user2 = Usuario("Maria Oliveira", "maria@email.com");
  user2.exibirPerfil();
}