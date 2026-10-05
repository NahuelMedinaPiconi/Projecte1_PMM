import '../mixins/GPSLocation.dart';

abstract class Vehicle with Gpslocation {

  //Atributs
  late String id;
  late int bateriaPercentatge;
  bool enUs = false;
  late double preuPerMinut;

  //Mètodes heredats
  String estatBateria() {
    return switch (bateriaPercentatge) {
      >= 80 => "Alta",
      >= 20 => "Mitjana",
      _ => "Crítica (Requereix càrrega)"
    };
  }

  //Metodes a reescriure
  double calcularCostReserva(int minuts); 
  String toString();
}