class Pessoa {
  String _nome = "";
  double _peso = 0;
  double _altura = 0;

  String get nome {
    return _nome;
  }

  set nome(String nome) {
    _nome = nome;
  }

  double get peso {
    return _peso;
  }

  set peso(double peso) {
    _peso = peso;
  }

  double get altura {
    return _altura;
  }

  set altura(double altura) {
    _altura = altura;
  }

  Pessoa(this._nome, this._peso, this._altura);
}
