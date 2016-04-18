package dominioElementosDeljuego


import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable

@Accessors
@Observable
class AccionUsarUnElemento extends Accion{
	
//	var Item item
	String nombreAccion  //Ojo es un parche,buscar solucion mejor
	
	val PREFIJO_USAR = "Usar un - "
	
	
	new(){}
		
	new(Item nuevoItem){
		itemN = nuevoItem
		//this.nombreAccion = PREFIJO_USAR + item.nombre
	}
		
	
	override realizarAccion(Jugador jugador) {
		jugador.hacerAccion(this)
	}


	override void asignarAHabitacion(Habitacion habitacion){
		habitacion.agregarElementoALaHabitacion(itemN)
	    super.asignarAHabitacion(habitacion)
	    this.nombreAccion = PREFIJO_USAR + itemN.nombre
	}
	
	
	
}