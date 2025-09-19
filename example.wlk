object entregarPaquete {
  method puedeEntregarseElPaquete(
    mensajero,
    destino,
    valor
  ) = (mensajero.puedeEntregarPaquete() && destino.puedeRecibirPaquete(
    valor
  )) && paquete.estaPago()
}

object paquete {
  var estaPago = true
  
  method estaPago() = estaPago
  
  method cambiarEstado() {
    estaPago = !estaPago
  }
}