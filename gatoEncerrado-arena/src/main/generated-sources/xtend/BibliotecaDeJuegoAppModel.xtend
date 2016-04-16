

import dominioElementosDeljuego.BibliotecaDeJuego
import dominioElementosDeljuego.Laberinto
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable
import java.util.List
import dominioElementosDeljuego.Habitacion

@Accessors
@Observable
class BibliotecaDeJuegoAppModel {
	BibliotecaDeJuego juego
	Laberinto laberintoSeleccionado
	Habitacion habitacionSeleccionada
	
	new(BibliotecaDeJuego juego){
		this.juego = juego
	}
	
	def List<Laberinto> getLaberintos(){
		this.juego.laberintos
	}
	
	def void quitarLaberinto(){
		juego.quitarLaberinto(laberintoSeleccionado)
	}
	
	def quitarHabitacion() {
		laberintoSeleccionado.quitarHabitacion(habitacionSeleccionada)
	}
	
	
}