package dominioElementosDeljuego

import java.util.ArrayList
import java.util.List
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable

@Observable
@Accessors
class Jugador {
	
	List<Item> inventario = new ArrayList<Item>


def void hacerAccion(AccionAgarrarItem accionDeAgarrar) {
	this.inventario.add(accionDeAgarrar.item)
}
def void hacerAccion(AccionUsarItem accionDeUsar){
	
	this.inventario.remove(accionDeUsar.item)
}	
}