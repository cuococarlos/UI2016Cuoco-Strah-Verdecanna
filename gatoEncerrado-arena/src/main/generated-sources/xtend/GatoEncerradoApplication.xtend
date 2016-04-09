import dominioElementosDeljuego.Laberinto
import org.uqbar.arena.Application

class GatoEncerradoApplication extends Application{
	
	
	override protected createMainWindow() {
		//new AgregarAccionWindow(this, new AccionIrAOtraHabitacion)
		new AgregarAccionIrAOtraHabitacionWindow(this, new Laberinto)
	}
	
	
	
	def static main(String[] args) {
		new GatoEncerradoApplication().start
	}
	
}