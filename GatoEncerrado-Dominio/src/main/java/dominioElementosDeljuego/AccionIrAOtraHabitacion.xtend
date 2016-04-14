package dominioElementosDeljuego

class AccionIrAOtraHabitacion extends Accion{
	Habitacion nueva
	
	new() {
		
	}
	
	override realizarAccion(Jugador j) {
		j.pasarDeHabitacion(nueva)
	}
	override void asignarAHabitacion(Habitacion h)
	{
		h.agregarAccion(this)	
		
	}
	def void asignarHabitacionDestino(Habitacion h)

		{
			nueva=h
		}
		

	}
	
