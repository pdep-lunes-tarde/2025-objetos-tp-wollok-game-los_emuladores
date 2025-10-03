import wollok.game.*
import tp.*


object joystickNormal{
    var posicion = new Position(x=20, y=10) 
    method image(){
        return "joystick_normal_chico.png"
    }
    method position() {
      return posicion 
    }
}

object estudiante {
    var direccion = sinDireccion
    var posicion = new Position(x=20, y=0)

    method image() {
        return "estudiante2chico.png"
    }

    method position() {
        return posicion
    }

    method position(nuevaPosicion) {
        posicion = nuevaPosicion
    }

    method direccion(nuevaDireccion) {
        direccion = nuevaDireccion
    }
    method mover(){
        self.position(direccion.siguientePosicion(posicion))
    }

     method move() {
        const nuevaPosicion = direccion.siguientePosicion(posicion)

        posicion = self.posicionCorregida(nuevaPosicion)
    }

    method posicionCorregida(posicionACorregir) {
        const nuevaY = wraparound.aplicarA(posicionACorregir.y(), 0, palant.alto())
        const nuevaX = wraparound.aplicarA(posicionACorregir.x(), 0, palant.ancho())

        return new Position(x=nuevaX, y=nuevaY)
    }
    
}


object izquierda {
    method siguientePosicion(posicion) {
        return posicion.left(1)
    }
}

object derecha {
    method siguientePosicion(posicion) {
        return posicion.right(1)
    }
}

object sinDireccion {
    method siguientePosicion(posicion) {
        return posicion
    }
}

object wraparound {
    method aplicarA(numero, topeInferior, topeSuperior) {
        if(numero < topeInferior) {
            return topeSuperior
        } else if(numero > topeSuperior) {
            return topeInferior
        } else {
            return numero
        }
    }
}


