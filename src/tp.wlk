import personaje.*
import wollok.game.*


object palant {

    const intervaloDeTiempoInicial = 100
    var intervaloDeTiempo = intervaloDeTiempoInicial

    method intervaloDeTiempo() {
        return intervaloDeTiempo
    }
  
    method ancho() {
        return 50
    }
    method alto() {
        return 30
    }
    method configurar() {
        game.ground("fondoBinario.jpg")
        game.width(self.ancho())
        game.height(self.alto())
        game.cellSize(32)

        game.addVisual(estudiante)

        game.onTick(intervaloDeTiempo, "movimiento", { estudiante.move() })

        keyboard.space().onPressDo{
            intervaloDeTiempo = 5 
            game.removeTickEvent("movimiento")
            game.onTick(intervaloDeTiempo, "movimiento", {estudiante.move()})
        }


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