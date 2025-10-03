import personaje.*
import wollok.game.*


object palant {
  
    method ancho() {
        return 50
    }
    method alto() {
        return 30
    }
    method configurar() {
        game.width(self.ancho())
        game.height(self.alto())
        game.cellSize(32)

                game.addVisual(estudiante)

        keyboard.right().onPressDo {
            estudiante.direccion(derecha)
            estudiante.mover()
        }
      
        keyboard.left().onPressDo {
            estudiante.direccion(izquierda)
            estudiante.mover()
        }
        
    }

    method jugar() {
        self.configurar()

        game.start()
    }
}