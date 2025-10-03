import wollok.game.*
import tp.*


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


