import '../mixins/GPSLocation.dart';

class User with Gpslocation {

  //Atributs privats
  late String _id;
  late String _nomComplet;
  late double _saldo;

  //Atributs públics
  late String correu;
  late bool esVIP = false;

  //Constructors
  User.nou({required String id, required String nom, required String correu}) {
    this._id = id;
    this._nomComplet = nom;
    this.correu = correu;
    this._saldo = 0.0;
  }

  User (this._id, this._nomComplet, this._saldo, this.correu, this.esVIP);

  //Getters
  String get id => _id;
  double get saldo => _saldo;

  //Metodes
  void recarregarSaldo(double quantitat) {
    if (quantitat <= 0) throw ArgumentError(quantitat, _nomComplet);
    this._saldo += quantitat;
  }

}

//Control d'excepcions
class ArgumentError implements Exception {
  late double quantitat;
  late String nomComplet;
  late String misatge;

  ArgumentError(this.quantitat, this.nomComplet) {
    this.misatge = "La quantitat introduida no és vàlida";
  }

  @override
  String toString() => "ArgumentError: S'ha intentat inserir una quantitat invalida de $quantitat a l'usuari $nomComplet";
}