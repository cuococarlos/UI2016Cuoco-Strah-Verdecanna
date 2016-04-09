package dominioElementosDeljuego

import org.eclipse.xtend.lib.annotations.Accessors

@Accessors

class AccionUsarItem extends Accion{
	var Item item
	override realizarAccion(Jugador j) {
		j.hacerAccion(this)
	}
	
	
}