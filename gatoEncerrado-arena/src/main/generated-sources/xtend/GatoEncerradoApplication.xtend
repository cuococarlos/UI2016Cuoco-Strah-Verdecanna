import dominioElementosDeljuego.BibliotecaDeJuego
import dominioElementosDeljuego.Laberinto
import org.uqbar.arena.Application

class GatoEncerradoApplication extends Application {

	override protected createMainWindow() {
	//	new AdministradorWindow(this, new BibliotecaDeJuego)

		val BibliotecaDeJuego biblioteca = new BibliotecaDeJuego() => [
			agregarLaberinto(new Laberinto("Mansion de la Muerte") => [ 
				agregarHabitacion("Hall de entrada")
				agregarHabitacion("Torre Principal")
				agregarHabitacion("Habitacion de la Reina")
			])
			agregarLaberinto(new Laberinto("El Calabozo Tenebroso") => [
				agregarHabitacion("Celda Apestosa")
				agregarHabitacion("Celda Sin Salida")
				agregarHabitacion("Guarida")
			])
			agregarLaberinto(new Laberinto("Casa del Asesino") => [
				agregarHabitacion("Living")
				agregarHabitacion("Cocina")
				agregarHabitacion("Habitacion")
				agregarHabitacion("Garage")
				agregarHabitacion("Baño")
				agregarHabitacion("Patio")
				
			])
		]

		new AdministradorWindow(this, biblioteca)
	}

	def static main(String[] args) {
		new GatoEncerradoApplication().start
	}

}
