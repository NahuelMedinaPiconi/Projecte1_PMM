import '../model/Cotxe.dart';
import '../model/Patinet.dart';
import '../model/User.dart';
import '../model/Vehicle.dart';

void main() {

  //Creació d'objectes
  Patinet pat1 = new Patinet(id: "p1", bateriaPercentatge: 10, preuPerMinut: 0.2);
  Patinet pat2 = new Patinet(id: "p2", bateriaPercentatge: 30, preuPerMinut: 0.1, velocitatMaxima: 30);
  Patinet pat3 = new Patinet(id: "p3", bateriaPercentatge: 100, preuPerMinut: 0.05, enUs: true, velocitatMaxima: 20);
  Cotxe cot1 = new Cotxe(id: "c1", bateriaPercentatge: 100, preuPerMinut: 0.25, enUs: true, places: 5, requereixLicencia: true);
  Cotxe cot2 = new Cotxe(id: "c2", bateriaPercentatge: 80, preuPerMinut: 0.55, places: 5, requereixLicencia: false);
  User use1 = new User("u1", "Nahuel Medina", 3000.2, "hola@2.com", true);

  //Llistes i subllistes
  List<Vehicle> flota = [pat1, pat2, pat3, cot1, cot2];

  print(flota.reduce((anterior, seguent) => seguent.bateriaPercentatge > anterior.bateriaPercentatge? seguent : anterior));

  List<Vehicle> subLlista = flota.sublist(0);
  subLlista.removeWhere((vehicle) => vehicle.enUs && vehicle.bateriaPercentatge <= 20);

  //Control de reserves
  pat1.enUs = true;
  print("El preu de reserva és de: ${pat1.calcularCostReserva(15, usuari: use1)}");

  //Control d'Ubicació amb el mixin
  pat1.actualitzarUbicacio(20.6, 34.1);

  var (:latitud, :longitud) = pat1.obtenirCordenades();
  print("Latitud: $latitud, longitud: $longitud");

  //Control d'errors
  try {
    use1.recarregarSaldo(-10);
  } catch (ArgumentError) {
    print(ArgumentError.toString());
  }
}