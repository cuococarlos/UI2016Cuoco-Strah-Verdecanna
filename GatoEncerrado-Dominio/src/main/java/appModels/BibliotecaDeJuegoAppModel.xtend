package appModels

import dominioElementosDeljuego.Accion
import dominioElementosDeljuego.BibliotecaDeJuego
import dominioElementosDeljuego.Habitacion
import dominioElementosDeljuego.Laberinto
import java.util.List
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable

@Accessors
@Observable
class BibliotecaDeJuegoAppModel {
	BibliotecaDeJuego juego
	Laberinto laberintoSeleccionado
	Habitacion habitacionSeleccionada
	Accion accionSeleccionada

	new(BibliotecaDeJuego juego) {
		this.juego = juego
	}

	def List<Laberinto> getLaberintos() {
		this.juego.laberintos
	}

	def void quitarLaberinto() {
		juego.quitarLaberinto(laberintoSeleccionado)
	}

	def void quitarHabitacion() {

		//laberintoSeleccionado.quitarHabitacion(habitacionSeleccionada)
		if (laberintoSeleccionado.habitacionesQueLaComponen.size == 1) {
			laberintoSeleccionado.quitarHabitacion(habitacionSeleccionada)
			//laberintoSeleccionado.quitarHabitacion(laberintoSeleccionado.actualDeJuego)
			quitarLaberinto()
		}
		else{
			laberintoSeleccionado.quitarHabitacion(habitacionSeleccionada)
			//laberintoSeleccionado.quitarHabitacion(laberintoSeleccionado.actualDeJuego)	
		}
		
		//habitacionSeleccionada = new Habitacion // parche para evitar puntero a Null
	}

	def hayHabitacion() {
		return habitacionSeleccionada != null
	}

}
