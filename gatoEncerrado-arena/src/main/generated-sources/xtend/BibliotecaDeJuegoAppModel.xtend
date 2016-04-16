

import dominioElementosDeljuego.BibliotecaDeJuego
import dominioElementosDeljuego.Laberinto
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable
import java.util.List
import dominioElementosDeljuego.Habitacion
import dominioElementosDeljuego.Accion

@Accessors
@Observable
class BibliotecaDeJuegoAppModel {
	BibliotecaDeJuego juego
	Laberinto laberintoSeleccionado
	Habitacion habitacionSeleccionada
	Accion accionSeleccionada
	
	new(BibliotecaDeJuego juego){
		this.juego = juego
	}
	
	def List<Laberinto> getLaberintos(){
		this.juego.laberintos
	}
	
	def void quitarLaberinto(){
		juego.quitarLaberinto(laberintoSeleccionado)
		//laberintoSeleccionado = new Laberinto
	}
	
	def void quitarHabitacion() {
		laberintoSeleccionado.quitarHabitacion(habitacionSeleccionada)
		//habitacionSeleccionada = new Habitacion // parche para evitar puntero a Null
	}
	
	def hayHabitacion(){
		return habitacionSeleccionada != null
	}
	
}