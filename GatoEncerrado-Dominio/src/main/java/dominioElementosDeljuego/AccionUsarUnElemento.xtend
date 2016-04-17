package dominioElementosDeljuego


import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable

@Accessors
@Observable
class AccionUsarUnElemento extends Accion{
	
	var Item item
//	String nombreAccion  //Ojo es un parche,buscar solucion mejor
	
	val PREFIJO_USAR = "Usar un - "
	
	
	new(){}
		
	new(Item nuevoItem){
		item = nuevoItem
		this.nombreAccion = PREFIJO_USAR + item.nombre
	}
		
	
	override realizarAccion(Jugador jugador) {
		jugador.hacerAccion(this)
	}


	override void asignarAHabitacion(Habitacion habitacion){
		habitacion.agregarElementoALaHabitacion(item)
		//nombreAccion = "Usar un"+item.nombre mirar esto 17/04
	    super.asignarAHabitacion(habitacion)	
	}
	
	
	
}