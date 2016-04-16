package dominioElementosDeljuego


abstract class Accion implements ElementosJuego {
	
	protected Habitacion habitacionDestino
	//protected Habitacion habitacionSel
	
	
	def void realizarAccion(Jugador j)
	
	
	override void asignarAHabitacion(Habitacion habitacion){
		habitacion.agregarAccion(this)			
	}

	
	def void asignarHabitacionDestino(Habitacion habitacion){
		habitacionDestino = habitacion
	}


	
}