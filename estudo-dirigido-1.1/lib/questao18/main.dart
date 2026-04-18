import 'playlist.dart';
import 'musica.dart';

void main() {
  Musica m1 = Musica('Bohemian Rhapsody', 'Queen', 354);
  Musica m2 = Musica('Stairway to Heaven', 'Led Zeppelin', 482);
  Musica m3 = Musica('Hotel California', 'Eagles', 391);

  Playlist p = Playlist('Rock Classico', m1, m2, m3);

  p.exibirPlaylist();
  p.tocarPlaylist();
}
