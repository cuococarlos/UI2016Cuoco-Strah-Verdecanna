package dominioElementosDeljuego

import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable

@Accessors
@Observable
class AccionAgarrarUnElemento extends Accion{
	
//	var Item item
//	var Habitacion hab
	
	String nombreAccion     //Ojo que es un parche, mejorar si es posible	

	val PREFIJO_AGARRAR = "Agarrar - "
		
	new(){}
			
		
	new(Item nuevoItem){
		itemN = nuevoItem
	//	this.nombreAccion = PREFIJO_AGARRAR + itemN.nombre
	}
		
	
	override realizarAccion(Jugador jugador) {
		jugador.hacerAccion(this)
	}


	override void asignarAHabitacion(Habitacion habitacion){
		habitacion.agregarElementoALaHabitacion(itemN)
	    super.asignarAHabitacion(habitacion)
	    this.nombreAccion = PREFIJO_AGARRAR + itemN.nombre
	}
	
	
	
	
}