object puenteBrooklyn {
  var habilitadoParaRecibirPaquete = true
  
  method cambiarEstadoDeRecepcionDePaquete() {
    habilitadoParaRecibirPaquete = false
  }
  
  method puedeRecibirPaquete(
    peso
  ) = habilitadoParaRecibirPaquete && (peso <= 1000)
}

object laMatrix {
  var habilitadoParaRecibirPaquete = true
  
  method cambiarEstadoDeRecepcionDePaquete() {
    habilitadoParaRecibirPaquete = false
  }
  
  method puedeRecibirPaquete(
    puedeLlamar
  ) = habilitadoParaRecibirPaquete && puedeLlamar
}