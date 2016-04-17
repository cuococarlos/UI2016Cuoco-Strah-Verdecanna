package dominioElementosDeljuego
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable


@Accessors
@Observable
class AccionIrAOtraHabitacion extends Accion{
	
	//Habitacion nueva

	val PREFIJO_IR = "Ir a habitacion - "
	
	
	new(Habitacion hab) {
		habitacionDestino = hab
		this.nombreAccion = PREFIJO_IR + hab.nombreHabitacion
	}
	
	
	override realizarAccion(Jugador jugador) {
		jugador.pasarDeHabitacion(habitacionDestino)
	}
	
	
	override void asignarAHabitacion(Habitacion habitacion){
		habitacion.agregarAccion(this)		
//		nombreAccion="Ir a"+habitacionDestino.nombreHabitacion			
//	  	17/04 mirar esto 
	}		


}
	
