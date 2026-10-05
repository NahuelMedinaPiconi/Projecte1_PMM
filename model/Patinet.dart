import 'User.dart';
import 'Vehicle.dart';

class Patinet extends Vehicle{

  //Atributs propis
  int velocitatMaxima = 25;

  //Constructor
  Patinet({required String id, required int bateriaPercentatge, bool? enUs, required double preuPerMinut, int? velocitatMaxima}) {
    if (velocitatMaxima != null) this.velocitatMaxima = velocitatMaxima;
    if (enUs != null) this.enUs = enUs;
    this.id = id;
    this.bateriaPercentatge = bateriaPercentatge;
    this.preuPerMinut = preuPerMinut;
  }

  //Metodes a reescriure
  @override
  double calcularCostReserva(int minuts, {User? usuari}) {
    if (usuari != null && usuari.esVIP) return minuts * preuPerMinut * 0.90; 
    return minuts * preuPerMinut;
  }

  @override
  String toString() {
    return "Patinet id: $id bateria: $bateriaPercentatge, és en us?: $enUs";
  }
}