import 'contato.dart';

class Agenda {
  List<Contato> _contatos;

  // Construtor nomeado 1: Inicia com lista vazia
  Agenda.vazia() : _contatos = [];

  // Construtor nomeado 2: Inicia com uma lista já existente
  Agenda.comContatos(this._contatos);

  void adicionarContato(Contato contato) {
    _contatos.add(contato);
  }

  void removerContatoPorNome(String nome) {
    _contatos.removeWhere((c) => c.nome == nome);
  }

  void listarContatos() {
    if (_contatos.isEmpty) {
      print("A agenda está vazia.");
    } else {
      for (var contato in _contatos) {
        contato.exibir();
      }
    }
  }
}