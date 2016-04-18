package appModels

import dominioElementosDeljuego.BibliotecaDeJuego
import org.uqbar.commons.utils.Observable
import gatoEncerradoExceptions.AgregarLaberintoException
import commons.GatoEncerradoCommons

@Observable
class AgregarLaberintoAppModel {
	BibliotecaDeJuego juego
	String nombreLaberinto

	def String getNombreLaberinto() {
		return nombreLaberinto
	}

	def void setNombreLaberinto(String nombre) {
		this.nombreLaberinto = nombre
	}

	new(BibliotecaDeJuego juego) {
		this.juego = juego
	}

	def void crearLaberinto() {
		if (nombreLaberinto == null) {
			throw new AgregarLaberintoException(GatoEncerradoCommons.NOMBRE_LABERINTO_VACIO_EXCEPTION)
		}
		juego.crearYAgregarLaberinto(nombreLaberinto)
	}

}
