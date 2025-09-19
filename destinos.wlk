// destinos.wlk
// destinos.wlk
// destinos.wlk
object puenteBrooklyn {
  var habilitadoParaRecibirPaquete = true
  
  method cambiarEstadoDeRecepcionDePaquete() {
    habilitadoParaRecibirPaquete = false
  }
  
  method puedeRecibirPaquete(
    mensajero,
    vehiculo
  ) = habilitadoParaRecibirPaquete && (vehiculo.pesoConMensajero(
    mensajero
  ) <= 1000)
}

object laMatrix {
  var habilitadoParaRecibirPaquete = true
  
  method cambiarEstadoDeRecepcionDePaquete() {
    habilitadoParaRecibirPaquete = false
  }
  
  method puedeRecibirPaquete(
    mensajero,
    vehiculo
  ) = habilitadoParaRecibirPaquete && mensajero.puedeLlamar()
}