package dominioElementosDeljuego

import org.eclipse.xtend.lib.annotations.Accessors

@Accessors

class AccionAgarrarItem extends Accion{
	var Item item
	
	new(Item i){
		item = i
		
	}
	override realizarAccion(Jugador j) {
		j.hacerAccion(this)
	}
	override void asignarAHabitacion(Habitacion h)
	{
		h.agregarElementoHabitacion(item)
	     super.asignarAHabitacion(h)
		
	}
}