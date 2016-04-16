package dominioElementosDeljuego

import java.util.List
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable
import org.uqbar.commons.model.UserException
import static org.uqbar.commons.model.ObservableUtils.*
import gatoEncerradoExceptions.NombreYaExistenteException

@Accessors
@Observable
class BibliotecaDeJuego {
	List<Laberinto> laberintos

	new() {
		laberintos = newArrayList
	}

	def void agregarLaberinto(Laberinto laberinto) {
		laberintos.add(laberinto)
	}

	def void crearYAgregarLaberinto(String nombre) {
		if (laberintos.exists[it.nombreLaberinto == nombre]) {
			throw new NombreYaExistenteException('''Ya existe el laberinto con nombre «nombre»''')
		}
		var Laberinto nuevoLaberinto = new Laberinto(nombre)
		laberintos.add(nuevoLaberinto)

		//laberintos.add(new Laberinto(nombre))
		firePropertyChanged(this, "laberintos", laberintos)
	}

	def void quitarLaberinto(Laberinto lab) {
		laberintos.remove(lab)
		firePropertyChanged(this,"laberintos", laberintos)
	}
	
	def crearYAgregarHabitacion(String nombreHab, Laberinto lab) {
		
	}
	
}
