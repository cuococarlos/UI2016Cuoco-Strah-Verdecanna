import dominioElementosDeljuego.BibliotecaDeJuego
import org.uqbar.arena.Application

class GatoEncerradoApplication extends Application{
	
	
	override protected createMainWindow() {
		new AdministradorWindow(this, new BibliotecaDeJuego)
	}

	def static main(String[] args) {
		new GatoEncerradoApplication().start
	}
	
}
	
