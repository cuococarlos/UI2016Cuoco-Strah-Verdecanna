package dominioElementosDeljuego

import java.util.List
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable
import org.uqbar.commons.model.UserException

@Accessors
@Observable
class BibliotecaDeJuego {
	List<Laberinto> laberintos
	
	new(){
		laberintos = newArrayList
	}
	
	def void agregarLaberinto(Laberinto laberinto){
		laberintos.add(laberinto)  
	}
	
	def void crearYAgregarLaberinto(String nombre){
		if(laberintos.exists[it.nombreLaberinto == nombre]){
			throw new UserException('''Ya existe el laberinto con nombre «nombre»''')
		}
		
		laberintos.add(new Laberinto(nombre))
	}
}