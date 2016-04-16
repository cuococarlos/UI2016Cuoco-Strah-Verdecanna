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

	new() {
		this.laberinto = new Laberinto()
	}

	new(Laberinto laberinto) {
		this.laberinto = laberinto
	}

	def String getNombreLaberinto() {
		this.laberinto.nombreLaberinto
	}

	def void setNombreLaberinto(String nuevoNombre) {
		this.laberinto.nombreLaberinto = nuevoNombre
	}

	def crearLaberinto() {
		laberinto.crearLaberinto(nombreLaberinto)
	}
}
