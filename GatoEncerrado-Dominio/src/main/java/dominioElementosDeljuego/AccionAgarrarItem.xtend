package dominioElementosDeljuego

import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
class AccionAgarrarItem extends Accion{
	
	// por ahora esta clase no se usa
	
	var Item item
	
	new(Item i){
		item = i
		
	}
	override realizarAccion(Jugador j) {
	//	j.hacerAccion(this)
	}
	override void asignarAHabitacion(Habitacion h)
	{
		h.agregarElementoALaHabitacion(item)
	    // super.asignarAHabitacion(h)
		
	}
}