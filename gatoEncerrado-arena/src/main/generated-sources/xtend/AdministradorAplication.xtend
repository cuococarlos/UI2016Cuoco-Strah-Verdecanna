import dominioElementosDeljuego.BibliotecaDeJuego
import dominioElementosDeljuego.Laberinto
import org.uqbar.arena.Application
import dominioElementosDeljuego.Habitacion

class AdministradorAplication extends Application{
	
	override protected createMainWindow() {
		
		val BibliotecaDeJuego biblioteca = new BibliotecaDeJuego() =>[
			agregarLaberinto(new Laberinto("lab") => [ agregarHabitacion(new Habitacion("Habitacion1"))])
			agregarLaberinto(new Laberinto("lab2") => [ agregarHabitacion(new Habitacion("Habitacion2"))])
		]
		
		new AdministradorWindow(this, biblioteca)
	}
	
	def static void main(String[] args) {
		new AdministradorAplication().start()
	}
}