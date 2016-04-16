package dominioElementosDeljuego

import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable

@Accessors
@Observable
class AccionAgarrarUnElemento extends Accion{
	
	var Item item
	var Habitacion hab
		
	new(){}
		
	new(Habitacion h){
		this.hab = h
	}	
		
	new(Item i){
		item = i	
	}
		
	
	override realizarAccion(Jugador jugador) {
		jugador.hacerAccion(this)
	}


	override void asignarAHabitacion(Habitacion habitacion){
		habitacion.agregarElementoALaHabitacion(item)
	     super.asignarAHabitacion(habitacion)
	}
	
	
	
	
}