class Contenido{
  const titulo
  var costoBase

  method costoBase

}


class Pelicula inherits Contenido {
  const titulo


}

class Serie inherits Contenido {
  const temporadas = []




}

class Temporada {
  const episodios = []
  const numero

  method agregarEpisiodio(unEpisodio){
    episodios.add(unEpisodio)
  }

  method = cantidadEpisodios(){
    return episodios.lenght()
  }

}

class Episodio {
  const numero
  const titulo
}
