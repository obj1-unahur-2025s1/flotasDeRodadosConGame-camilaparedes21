

class Corsa {
  const color
  method capacidad() = 4
  method velocidadMaxima() = 150
  method peso() = 1300
  method color() = color
}
class Kwid {
  var property tieneTanqueAdicional = false
  method capacidad() = if(tieneTanqueAdicional) 3 else 4
  method velocidadMaxima() =if(tieneTanqueAdicional) 120 else 110
  method peso() =  1200 + if(tieneTanqueAdicional)150 else 0
  method color() = "azul"
}

object trafic {
  var property interior = comodo
  var property motor = pulenta
  method capacidad() = interior.capacidad()
  method velocidadMaxima() = motor.velocidadMaxima()
  method peso() = 4000 + interior.peso() + motor.peso()
  method color() = "blanco"
}

object comodo {
    method capacidad() = 5
    method peso() = 700
}

object popular {
    method capacidad() = 12
    method peso() = 1000
}

object pulenta {
    method velocidadMaxima() = 130
    method peso() = 800
}

object baraton {
    method velocidadMaxima() = 80
    method peso() = 500
}

class AutosEspeciales {
  var property color
    var property capacidad
    var property peso
    var property velocidadMaxima
}

