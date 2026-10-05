import 'Vehicle.dart';

class Cotxe extends Vehicle{
  
  //Atributs propis
  late int places;
  late bool requereixLicencia;

  //Constructor
  Cotxe({required String id, required int bateriaPercentatge, bool? enUs, required double preuPerMinut, required int places, required bool requereixLicencia}) {
    if (enUs != null) this.enUs = enUs;
    this.id = id;
    this.bateriaPercentatge = bateriaPercentatge;
    this.preuPerMinut = preuPerMinut;
    this.places = places;
    this.requereixLicencia = requereixLicencia;
  }

  //Metodes necesaris
  @override
  double calcularCostReserva(int minuts) {

    double sumplementFiltreEcologic = 2.0;

    return minuts * preuPerMinut + sumplementFiltreEcologic;
  }

  @override
  String toString() {
    return "Cotxo id: $id bateria: $bateriaPercentatge, és en us?: $enUs, places: $places";
  }
}