class Plan{
    var costoFijo
    const property contenidoVisto = []

    method agregarContenido(contenido){
        contenidoVisto.add(contenido)
    }

    method costo()

}

class PlanBasico inherits Plan{

    var cantidadDeContenidoBonificado

    override method costo(){

        const contenidoFacturado = contenidoVisto.drop(cantidadDeContenidoBonificado)

        return costoFijo + contenidoFacturado.sum({c => c.costoBase()})

    }

}

class Usuario {
    const nombre
    var property plan

    method verContenido(contenido){
        plan.contenidoVisto().add(contenido)
    }

}

