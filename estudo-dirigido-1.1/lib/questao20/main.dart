import 'treinador.dart';
import 'pokemon.dart';

void main() {
  Pokemon p1 = Pokemon(25, 'Pikachu', 'Elétrico', 50, 120);
  Pokemon p2 = Pokemon(6, 'Charizard', 'Fogo', 80, 200);
  Pokemon p3 = Pokemon(131, 'Lapras', 'Água/Gelo', 45, 260);

  Treinador ash = Treinador('Ash Ketchum', p1, p2, p3);

  ash.exibirTime();
}
