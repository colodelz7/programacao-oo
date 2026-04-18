class Televisao {
  int _canal;
  int _volume;

  Televisao(this._canal, this._volume);

  // Métodos que o controle vai usar
  void setCanal(int novoCanal) => _canal = novoCanal;
  void setVolume(int novoVolume) => _volume = novoVolume;

  int get canal => _canal;
  int get volume => _volume;

  void exibir() {
    print("TV -> Canal: $_canal | Volume: $_volume");
  }
}