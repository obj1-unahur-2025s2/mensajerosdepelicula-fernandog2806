object entregarPaquete {
  method puedeEntregarseElPaquete(
    mensajero,
    destino,
    vehiculo
  ) = (mensajero.puedeEntregarPaquete() && destino.puedeRecibirPaquete(
    mensajero,
    vehiculo
  )) && paquete.estaPago()
}

object paquete {
  var estaPago = true
  
  method estaPago() = estaPago
  
  method cambiarEstado() {
    estaPago = !estaPago
  }
}