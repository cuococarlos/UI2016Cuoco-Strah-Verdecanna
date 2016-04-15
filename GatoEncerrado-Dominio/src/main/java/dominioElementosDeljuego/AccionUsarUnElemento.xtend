package dominioElementosDeljuego


import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
class AccionUsarUnElemento extends Accion{
	
	var Item item
	
	new(){}
		
	new(Item i){
		item = i	
	}
		
	
	override realizarAccion(Jugador jugador) {
		jugador.hacerAccion(this)
	}


	override void asignarAHabitacion(Habitacion habitacion){
		habitacion.agregarElementoALaHabitacion(item)
	    // super.asignarAHabitacion(habitacion)
	}
	
	
}