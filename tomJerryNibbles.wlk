object tom {
  var energia = 50
  var distanciaRecorrida = 0
  var ultimoRatonQueComio = nibbles

  method energia() = energia
  method velocidadMaxima() = 5 + energia /10
  method comerA(unRaton) {
      energia = energia + 12 + unRaton.peso()
      ultimoRatonQueComio = unRaton
    }
  method correr(metros) {
      energia = energia - metros * 0.5
      distanciaRecorrida = distanciaRecorrida + metros
  }  
  method distanciaRecorrida() = distanciaRecorrida     
  method puedeCazar(unaDistancia) = energia > unaDistancia

  method cazarRaton(unRaton, unaDistancia) {
    if(self.puedeCazar(unaDistancia)){
      self.correr(unaDistancia)
      self.comerA(unRaton)
    } 
  }
}

object jerry {
  var edad = 2

  method peso() = edad *20
  method edad() = edad
  method cumplirAnio() {edad = edad + 1}
}

object nibbles {
  method peso() = 35
}

object stuart {
  var tamaño = 20

  method peso() = tamaño *2
  method tamaño() = tamaño
  method cambiarTamaño(unTamaño) {tamaño = unTamaño}
}