package dominioElementosDeljuego

import java.util.ArrayList
import java.util.List
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable


@Observable
@Accessors
class Laberinto {
	List<Habitacion> habitacionesQueLaComponen = new ArrayList<Habitacion>
	Habitacion actualDeJuego
	
	def Habitacion comienzoLaberinto(){
		
	}
	
	def cambiarHabitacionDeJuego(Habitacion habitacion) {
		actualDeJuego= habitacion
	}
	
	def accionYaRealizada(AccionUsarItem item) {
		actualDeJuego.eliminarAccion(item)
	}
	
	def sacarItem(Item item) {
		actualDeJuego.sacarItemDeHabitacion(item)
	}
	
}