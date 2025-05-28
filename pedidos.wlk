import dependencia.*
import autos.*

class Pedidos {
  const property distanciaEnKm 
  var property tiempoMaximoEnHr 
  const property cantidadDePasajeros
  const property coloresIncompatibles = []
  method velocidadRequerida() = distanciaEnKm / tiempoMaximoEnHr
  method autoSatifacerPedido(auto) = self.velocidadMin(auto) && self.capacidadAuto(auto) && self.colorIncompatible(auto)

  //auxiliares autoSatifacerPedido
  method velocidadMin(auto) = auto.velocidadMaxima()>=self.velocidadRequerida()+ 10
  method capacidadAuto(auto) = auto.capacidad() >= self.cantidadDePasajeros()
  method colorIncompatible(auto) = !coloresIncompatibles.contains(auto.color())

  
  method acelerar() {
    tiempoMaximoEnHr -=1
  }

  method relajar() {
    tiempoMaximoEnHr+=1
  }
}
  