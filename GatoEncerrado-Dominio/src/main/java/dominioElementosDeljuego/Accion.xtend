package dominioElementosDeljuego

import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
abstract class Accion implements ElementosJuego {
	
	protected Habitacion habitacionDestino
	//protected Habitacion habitacionSel
	protected String nombreAccion
		
	
	def void realizarAccion(Jugador j)
	
	
	override void asignarAHabitacion(Habitacion habitacion){
		habitacion.agregarAccion(this)			
	}

	
	def void asignarHabitacionDestino(Habitacion habitacion){
		habitacionDestino = habitacion
	}


	
}