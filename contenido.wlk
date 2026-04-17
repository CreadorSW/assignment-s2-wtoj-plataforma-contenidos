// Queremos que sea una clase abstracta
class Contenido{
  const titulo
  var costoBase

  method costo

}


class Pelicula inherits Contenido {
  // Vacía - hereda todo de Contenido


}

class Serie inherits Contenido {
  const temporadas = []

  method agregarTemporada(unaTemporada){
    temporadas.add(unaTemporada)
  }

  override method costo(){
    return self.costoBase + temporadas.sum{t => t.costo()}/length()

  }


}

class Temporada inherits Contenido {
  const episodios = []
  const numero

  method agregarEpisiodio(unEpisodio){
    episodios.add(unEpisodio)
  }

  method = cantidadEpisodios(){
    return episodios.lenght()
  }

  override method costo(){
    return episodios.sum{e => e.costo()}
  }


}

class Episodio inherits Contenido {
  const numero

  override method costo(){
    return self.costoBase
  }

}
