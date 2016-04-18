package dominioElementosDeljuego
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable


@Accessors
@Observable
class AccionIrAOtraHabitacion extends Accion{
	
	String nombreAccion 
	
	val PREFIJO_IR = "Ir a habitacion - "
	
	
	new(Habitacion hab) {
		habitacionDestino = hab
		//this.nombreAccion = PREFIJO_IR + habitacionDestino.nombreHabitacion
	}
	
	
	override realizarAccion(Jugador jugador) {
		jugador.pasarDeHabitacion(habitacionDestino)
	}
	
	
	override void asignarAHabitacion(Habitacion habitacion){
		habitacion.agregarAccion(this)
		super.asignarAHabitacion(habitacion)    ////
		this.nombreAccion = PREFIJO_IR + habitacionDestino.nombreHabitacion   ////
	}		


}
	
