package dominioElementosDeljuego

import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
abstract class Accion implements ElementosJuego {
	
		//protected Habitacion habitacionSel
	protected Habitacion habitacionDestino
	protected Item itemN
	protected String nombreAccion
		
	
		
	override void asignarAHabitacion(Habitacion habitacion){
		habitacion.agregarAccion(this)			
	}

	
	def void asignarHabitacionDestino(Habitacion habitacion){
		habitacionDestino = habitacion
	}
	def chequearSiSePuedeEjecutarAccion(EstadoDeJuego est){
		return chequearAccionYaRealizada(est) && habitacionDestino.equals(est.habitacionActual)
	}
	def chequearAccionYaRealizada(EstadoDeJuego est) {
		return   ! est.accionesDePartida.get(est.habitacionActual.id).contains(this)
	}
	def ResultadoAccion ejecutar(Jugador jugador,Habitacion hab){}	
	def Integer id(){
	this.hashCode
	}


	
}