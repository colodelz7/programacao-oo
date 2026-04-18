class Usuario {
  // Atributos privados
  String _nome;
  String _email;
  String _apelido;

  // Construtor com parâmetro opcional entre []
  // O String? com interrogação permite que o apelido seja nulo na criação
  Usuario(this._nome, this._email, [String? apelido]) 
      : _apelido = apelido ?? _nome; 
      // Se 'apelido' for nulo, a variável '_apelido' recebe o valor de '_nome'

  // Método para exibir o perfil
  void exibirPerfil() {
    print("--- Perfil do Usuário ---");
    print("Nome: $_nome");
    print("Email: $_email");
    print("Apelido: $_apelido");
    print("-------------------------");
  }
}