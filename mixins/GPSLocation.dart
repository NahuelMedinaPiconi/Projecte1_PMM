mixin Gpslocation {

  //Atributs del mixin
  late double latitud, longitud;

  //Mètodes
  void actualitzarUbicacio(double latitud, double longitud) {
    this.latitud = latitud;
    this.longitud = longitud;
  }

  ({double latitud, double longitud}) obtenirCordenades() {
    return (latitud: this.latitud, longitud: this.longitud);
  }
}