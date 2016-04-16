package dominioElementosDeljuego

class AccionIrAOtraHabitacion extends Accion{
	
	//Habitacion nueva
	String nombreAccion
	String nombreItem
	
	new(Habitacion hab) {
		habitacionDestino=hab	
	}
	
	
	override realizarAccion(Jugador jugador) {
		jugador.pasarDeHabitacion(habitacionDestino)
	}
	
	
	override void asignarAHabitacion(Habitacion habitacion){
		habitacion.agregarAccion(this)				
	
//	override void asignarHabitacionDestino(Habitacion h){
//			nueva=h
	}
		

	}
	
