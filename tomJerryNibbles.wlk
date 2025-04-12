object tom {
var energia = 50
var distanciaRecorrida = 0

method velocidadMaxima() = 5 + energia /10
method comerA(unRaton) {energia = energia + 12 + unRaton.peso()}
method energia() = energia
method correr(metros) {
    energia = energia - metros * 0.5
    distanciaRecorrida = distanciaRecorrida + metros
    }
method distanciaRecorrida() = distanciaRecorrida     
}

object jerry {
  var edad = 2

  method peso() = edad *20
}

object nibbles {
  method peso() = 35
}
