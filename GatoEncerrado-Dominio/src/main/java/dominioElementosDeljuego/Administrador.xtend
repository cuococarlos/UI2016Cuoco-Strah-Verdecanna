package dominioElementosDeljuego

import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable

@Accessors
@Observable
class Administrador {
	
	BibliotecaDeJuego biblioteca	
	Laberinto laberinto
	Habitacion habitacion
	Accion accion
	
	new(Laberinto laberinto){
		this.laberinto = laberinto
	}
	
	
	def crearLaberinto(){
		laberinto.crearLaberinto(laberinto)
	}
}