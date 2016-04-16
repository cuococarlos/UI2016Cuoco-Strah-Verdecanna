import dominioElementosDeljuego.BibliotecaDeJuego
import org.uqbar.commons.utils.Observable

@Observable
class AgregarLaberintoAppModel {
	BibliotecaDeJuego juego
	String nombreLaberinto

	def String getNombreLaberinto(){
		return nombreLaberinto
	}
	
	def void setNombreLaberinto(String nombre){
		this.nombreLaberinto = nombre
	}
		
	new(BibliotecaDeJuego juego) {
		this.juego = juego
	}
	
	def void crearLaberinto(){
		juego.crearYAgregarLaberinto(nombreLaberinto)
	}
	
	
	
	
}