package dominioElementosDeljuego

class ResultadoAccionBuilder {
	
	
	
	
	
	def buildResultadoUsar(){
		new ResultadoAccionUsar(nuevoInventario, nuevaAccion, ....);
	}
	
	def buildResultadoMoverse(){
		new ResultadoAccionMoverse(nuevaHabitacionActual);
	}
	
}