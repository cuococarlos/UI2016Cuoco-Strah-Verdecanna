package dominioElementosDeljuego

abstract class Accion implements ElementosJuego {
	
	def void realizarAccion(Jugador j)
	
	override void asignarAHabitacion(Habitacion habitacion) 
			{
				habitacion.agregarAccion(this)
			}

	
}