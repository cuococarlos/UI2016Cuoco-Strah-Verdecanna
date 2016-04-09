package dominioElementosDeljuego

import java.util.List

class EstadoDeJuego {
	Habitacion habitacionActual
	List<Item> inventarioActual
	Laberinto lab
	
	new (){
		habitacionActual=lab.comienzoLaberinto
	}
	
	def void cambiarHabitacionActual(AccionIrAOtraHabitacion ah){}
	
	
	}