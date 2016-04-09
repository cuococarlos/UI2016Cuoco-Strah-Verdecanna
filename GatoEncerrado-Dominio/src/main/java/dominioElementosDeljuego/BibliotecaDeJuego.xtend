package dominioElementosDeljuego

import java.util.List
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable

@Accessors
@Observable
class BibliotecaDeJuego {
	
	
	List<Laberinto> laberintos
	List<Habitacion> habitaciones
	List<Accion> acciones
	
	
//	def void agregarLaberinto(){
//		var laberintoNuevo = new Laberinto
//		laberintos.add(laberintoNuevo)  
//	}
}