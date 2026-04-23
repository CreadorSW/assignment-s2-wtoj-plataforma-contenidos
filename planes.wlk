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

        // Si tiene más contenido Bonificado de lo que ve, el drop vacía la lista. En Java eso no sucede
        const contenidoFacturado = contenidoVisto.drop(cantidadDeContenidoBonificado)

        return costoFijo + contenidoFacturado.sum({c => c.costoBase()})

    }

}


class PlanPremium inherits Plan{
    var costoMensual
    override method costo(){

        return costoMensual
    }

}


class PlanFamiliar inherits PlanBasico{
    var cantidadDeUsuarios

    override method costo(){

        return super()*(1-0.15*cantidadDeUsuarios)
    }


}

// ======== Usuario y Plataforma ===========

class Usuario {
    const nombre
    var property plan

    method verContenido(contenido){
        plan.contenidoVisto().add(contenido)
    }

}

class Plataforma{
    const property usuarios = []

    method agregarUsuario(usuario){
        usuarios.add(usuario)
    }

    method facturacionTotal(){

        usuarios.sum{u => u.plan().consto()}
    }

    method reiniciarCiclo(){
        usuarios.forEach{u => u.plan().contenidoVisto().clear()}
    }



}

