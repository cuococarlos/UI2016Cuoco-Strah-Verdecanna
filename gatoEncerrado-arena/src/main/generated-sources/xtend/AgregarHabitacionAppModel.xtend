import dominioElementosDeljuego.Habitacion
import dominioElementosDeljuego.Laberinto
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable

@Accessors
@Observable
class AgregarHabitacionAppModel {

	//BibliotecaDeJuego juego
	Laberinto laberintoActual
	Habitacion habitacionActual

	//este laberinto que recibo por parametro es el laberintoSeleccionado de la clase BibliotecaDeJuegoAppModel
	new(Laberinto laberinto){
		this.laberintoActual = laberinto 
		habitacionActual = new Habitacion
	}
	
	def void crearYAgregarHabitacion(){
		laberintoActual.agregarHabitacion(habitacionActual)
	}
			

}