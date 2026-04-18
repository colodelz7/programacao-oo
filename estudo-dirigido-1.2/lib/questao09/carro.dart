class Carro {
  String _modelo;
  int _quilometragem;

  Carro(this._modelo, this._quilometragem);

  // Precisamos de um método para alterar a quilometragem
  void set quilometragem(int novaKm) => _quilometragem = novaKm;
  int get quilometragem => _quilometragem;

  void exibir() {
    print("Carro: $_modelo | Quilometragem: $_quilometragem km");
  }
}