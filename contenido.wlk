/*
# Cosas que tuve que recordar por el feedback de errores
    - Para llamar un método de sí mismo, usar `self.`
    - Una clase es abstracta si contiene al menos un método no definido.

*/


// Queremos que sea una clase abstracta
class Contenido{
  const titulo
  var property costoBase

  method costo()

}


class Pelicula inherits Contenido {
  // Vacía - hereda todo de Contenido
  method costo(){
    //Tenemos que dejar el método vacío para que no sea abstracta
  }

}

class Serie inherits Contenido {
  const temporadas = []

  method agregarTemporada(unaTemporada){
    temporadas.add(unaTemporada)
  }
  method cantidadEpisodiosTotales(){
    return temporadas.sum({t => t.cantidadEpisodios()})
  }
  override method costo(){
    return costoBase + temporadas.sum({t=>
t.costo()})/self.cantidadEpisodiosTotales()

  }



}

class Temporada inherits Contenido {
  const episodios = []
  const numero

  method agregarEpisodio(unEpisodio){
    episodios.add(unEpisodio)
  }

  method cantidadEpisodios(){
    return episodios.size()
  }

  override method costo(){

    return episodios.sum{e => e.costo()}
  }


}

class Episodio inherits Contenido {
  const numero

  override method costo(){
    return costoBase
  }

}

class Documental inherits Contenido{
  var property cannonIDRA = 0.5
  override method costo(){
    return costoBase + costoBase*cannonIDRA
  }


}
