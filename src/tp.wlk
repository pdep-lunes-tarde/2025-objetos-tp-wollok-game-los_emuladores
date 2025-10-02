import wollok.game.*

object juegoPalant{
     method ancho() {
        return 50
    }
    method alto() {
        return 50
    }
    method configurar() {
        game.width(self.ancho())
        game.height(self.alto())
        game.cellSize(32)
        game.ground("pantalla_verde.png")
    }
    method iniciar(){
        game.start()
  }
}
