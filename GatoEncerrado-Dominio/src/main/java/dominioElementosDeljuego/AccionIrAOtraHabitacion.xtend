package dominioElementosDeljuego

class AccionIrAOtraHabitacion extends Accion{
	
	//Habitacion nueva
	
	
	new() {	
	}
	
	
	override realizarAccion(Jugador jugador) {
		jugador.pasarDeHabitacion(habitacionDestino)
	}
	
	
	override void asignarAHabitacion(Habitacion habitacion){
		habitacion.agregarAccion(this)			
	}
	
	
	
//	override void asignarHabitacionDestino(Habitacion h){
//			nueva=h
//	}
		

	}
	
