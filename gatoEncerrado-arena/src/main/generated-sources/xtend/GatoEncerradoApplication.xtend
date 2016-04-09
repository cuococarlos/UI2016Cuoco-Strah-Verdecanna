

import org.uqbar.arena.Application
import dominioElementosDeljuego.AccionIrAOtraHabitacion

class GatoEncerradoApplication extends Application{
	
	override protected createMainWindow() {
		new AgregarAccionWindow(this, new AccionIrAOtraHabitacion)
	}
	
	def static main(String[] args) {
		new GatoEncerradoApplication().start
	}
	
}