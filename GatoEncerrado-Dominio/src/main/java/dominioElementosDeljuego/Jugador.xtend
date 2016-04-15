package dominioElementosDeljuego

import java.util.ArrayList
import java.util.List
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable

@Observable
@Accessors
class Jugador {
	
	List<Item> inventario = new ArrayList<Item>
    Laberinto  actuallaberinto


	def void hacerAccion(AccionAgarrarUnElemento accionDeAgarrar) {
		this.inventario.add(accionDeAgarrar.item)
		actuallaberinto.sacarItem(accionDeAgarrar.item)
	}


	def void hacerAccion(AccionUsarUnElemento accionDeUsar){		
		inventario.remove(accionDeUsar.item)
		actuallaberinto.accionYaRealizada(accionDeUsar)
	}

	
	def pasarDeHabitacion(Habitacion habitacion) {
		actuallaberinto.cambiarHabitacionDeJuego(habitacion)
	}
	

	
	
}