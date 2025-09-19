object roberto {
  var peso = 90
  var puedeEntregarPaquete = true
  
  method viajaEn(vehiculo) {
    if (vehiculo == bicicleta) {
      return peso + bicicleta.peso()
    } else {
      return peso + vehiculo.peso()
    }
  }
  
  method peso() = peso
  
  method puedeLlamar() = false
  
  method puedeEntregarPaquete() = puedeEntregarPaquete
  
  method cambiarEstadoDeRecibirPaquete() {
    puedeEntregarPaquete = !puedeEntregarPaquete
  }
}

object bicicleta {
  method peso() = 5
  
  method pesoConMensajero(mensajero) = self.peso() + mensajero.peso()
}

object camion {
  var cantidadDeAcoplados = 0
  
  method peso() = 400 + (cantidadDeAcoplados * 400)
  
  method pesoConMensajero(mensajero) = self.peso() + mensajero.peso()
  
  method acoplado() = cantidadDeAcoplados
  
  method agregarAcoplados(nroAcoplados) {
    cantidadDeAcoplados = nroAcoplados
  }
}

object chuckNorris {
  var tieneElPulgarEnlaOreja = true
  var tieneElMeñiqueEnLaBoca = true
  var puedeEntregarPaquete = true
  
  method peso() = 80
  
  method tieneElPulgarEnlaOreja() = tieneElPulgarEnlaOreja
  
  method tieneElMeñiqueEnLaBoca() = tieneElMeñiqueEnLaBoca
  
  method cambiarPosicionDelPulgar() {
    tieneElPulgarEnlaOreja = false
  }
  
  method cambiarPosicionDelMeñique() {
    tieneElMeñiqueEnLaBoca = false
  }
  
  method puedeLlamar() = self.tieneElMeñiqueEnLaBoca() && self.tieneElPulgarEnlaOreja()
  
  method puedeEntregarPaquete() = puedeEntregarPaquete
  
  method cambiarEstadoDeRecibirPaquete() {
    puedeEntregarPaquete = !puedeEntregarPaquete
  }
}

object neo {
  var credito = 0
  var puedeEntregarPaquete = true
  
  method peso() = 0
  
  method consultarCredito() = credito
  
  method cargar(cantCredito) {
    credito += cantCredito
  }
  
  method tieneCredito() = credito >= 1
  
  method puedeLlamar() = self.tieneCredito()
  
  method puedeEntregarPaquete() = puedeEntregarPaquete
  
  method cambiarEstadoDeRecibirPaquete() {
    puedeEntregarPaquete = !puedeEntregarPaquete
  }
}