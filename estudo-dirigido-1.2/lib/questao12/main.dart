// Arquivo principal - testa as duas formas de criar a Agenda
import 'contato.dart';
import 'agenda.dart';

void main() {
  // Criando agenda vazia e adicionando contatos depois
  Agenda agenda1 = Agenda.vazia();
  agenda1.adicionarContato(Contato('Ana', '1111-1111'));
  agenda1.adicionarContato(Contato('Pedro', '9999-9999'));
  agenda1.removerContatoPorNome('Pedro');

  // Criando agenda já com contatos desde o início
  Agenda agenda2 = Agenda.comContatos([
    Contato('Bruno', '2222-2222'),
    Contato('Clara', '3333-3333'),
  ]);

  print('Agenda 1:');
  agenda1.listarContatos();

  print('\nAgenda 2:');
  agenda2.listarContatos();

  // Respostas das perguntas:
  // a) Agenda vazia começa sem nenhum contato, precisam ser adicionados depois.
  //    Agenda com contatos já começa populada, útil quando os dados
  //    já estão disponíveis desde o início.
  //
  // b) Os contatos NÃO são recriados. A agenda passa a usar as REFERÊNCIAS
  //    dos objetos Contato que foram passados na lista.
  //    São os mesmos objetos na memória.
}