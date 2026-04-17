//Colores

object celeste{
    method esFuerte() = false
}
object pardo{
    method esFuerte() = false
}
object rojo{
    method esFuerte() = true
}
object verde{
    method esFuerte() = true
}

//Materiales

object cobre{
    method esBrillante() = true
}
object vidrio{
    method esBrillante() = true
}
object lino{
    method esBrillante() = false
}
object madera{
    method esBrillante() = false
}
object cuero{
    method esBrillante() = false
}

//Objetos

object remera{
    method peso() = 800
    method color() = rojo
    method material() = lino
}
object muñeco{
    var peso = 100
    method peso() = peso
    method nuevoPeso(nuevoValor){
        peso = nuevoValor
    }
    method color() = celeste
    method material() = vidrio
}

object biblioteca{
    method peso() = 8000
    method color() = verde
    method material() = madera
}

object pelota{
    method peso() = 1300
    method color() = pardo
    method material() = cuero
}
object placa{
    var peso = 100
    var color = pardo
    method peso() = peso
    method color() = color
    method nuevoPeso(nuevoValor){
        peso = nuevoValor
    }
    method nuevoColor(nuevoColor){
        color = nuevoColor
    }
    method material() = cobre
}

object rosa{
    method leGusta(objeto){
        return objeto.peso() <= 2000
    }
}
object estefanía{
    method leGusta(objeto){
        return objeto.color().esFuerte()
    }
}

object luisa{
    method leGusta(objeto){
        return objeto.material().esBrillante()
    }
}

object juan{
    method leGusta(objeto){
        return objeto.color().esFuerte().negate() || (objeto.peso() >= 1200 && objeto.peso() <= 1800)
    }
}

object bolichito{
    var objetoEnVidriera = remera
    var objetoEnMostrador = pelota

    method cambiarObjetoEnVidriera(nuevoObjeto){
        objetoEnVidriera = nuevoObjeto
    }

    method cambiarObjetoEnMostrador(nuevoObjeto){
        objetoEnMostrador = nuevoObjeto
    }


    method esBrillante() {
        return objetoEnVidriera.material().esBrillante()
        && objetoEnMostrador.material().esBrillante()
    }

    method esMonocromatico(){
        return objetoEnMostrador.color() == objetoEnVidriera.color()
    }

    method esEquilibrado(){
        return objetoEnMostrador.peso() > objetoEnVidriera.peso()
    }

    method puedeMejorar(){
        return self.esMonocromatico().negate() || self.esBrillante().negate()
    }

    method tieneObjetoDeColor(colorAEleccion){
        return objetoEnMostrador.color() == colorAEleccion || objetoEnVidriera.color() == colorAEleccion
    }

    method puedeOfrecerleA_EstosObjeto(unaPersona){
        return unaPersona.leGusta(objetoEnMostrador) || unaPersona.leGusta(objetoEnVidriera)
    }
}

