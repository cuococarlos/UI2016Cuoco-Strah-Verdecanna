import dominioElementosDeljuego.Laberinto
import org.uqbar.arena.Application
import dominioElementosDeljuego.AccionIrAOtraHabitacion
import dominioElementosDeljuego.BibliotecaDeJuego

class GatoEncerradoApplication extends Application{
	
	
	override protected createMainWindow() {
		new AdministradorWindow(this, new BibliotecaDeJuego)
	}

	def static main(String[] args) {
		new GatoEncerradoApplication().start
	}
	
}
	
