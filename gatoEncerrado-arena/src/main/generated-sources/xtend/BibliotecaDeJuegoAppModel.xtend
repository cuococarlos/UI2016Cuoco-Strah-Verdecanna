

import dominioElementosDeljuego.BibliotecaDeJuego
import dominioElementosDeljuego.Laberinto
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable
import java.util.List

@Accessors
@Observable
class BibliotecaDeJuegoAppModel {
	BibliotecaDeJuego juego
	Laberinto laberintoSeleccionado
	
	new(BibliotecaDeJuego juego){
		this.juego = juego
	}
	
	def List<Laberinto> getLaberintos(){
		this.juego.laberintos
	}
}