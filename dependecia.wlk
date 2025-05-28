import autos.*

class Dependencia {
  const property flota =[]
  const property pedidos = []
  var property cantidadEmpleados = []


  method agregarAFlota(rodado) {
    flota.add(rodado)
  }

  method agregarMuchosAFlota(listaRodado) {
    flota.addAll(listaRodado)
  }

  method quitarDeFlota(rodado) {
    flota.remove(rodado)
  }

  method quitarMuchosDeFlota(listaRodado) {
    flota.removeAll(listaRodado)
  }

  method pesoTotalFlota() = flota.sum ({r=>r.peso()})
  method estaBienEquipada() = flota.size()>=3 && self.todosPuedenAlmenosA100()
  method capacidadTotalEnColor(color) = self.autosDeColor(color).sum({r=>r.capacidad()})
  method colorDelRodadoMasRapido() = flota.max({r=>r.velocidadMaxima()}).color()
  method capacidadFaltante() = 0.max(cantidadEmpleados-self.capacidadTotal())
  method esGrande() =  cantidadEmpleados >=40  && flota.size() >= 5


//auxiliares
method todosPuedenAlmenosA100() = flota.all({r=> r.velocidadMaxima()>=100})
method autosDeColor(color) = flota.filter({r=>r.color() == color})
method capacidadTotal() = flota.sum({r=>r.capacidad()})

// Etapa 3

method agregarPedido(unPedido) {
  pedidos.add(unPedido)
}

method quitarPedido(unPedido) {
  pedidos.remove(unPedido)
}

method totalDePasajeros() = pedidos.sum({p=>p.cantidadDePasajeros()})
method pedidosNoSatifechos() = pedidos.filter({p=>p.pedidoNoSastifecho(pedido)})

//auxiliares
method pedidoNoSastifecho(pedio) = 
}



