import dominioElementosDeljuego.BibliotecaDeJuego
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable
import dominioElementosDeljuego.Laberinto
import dominioElementosDeljuego.Habitacion

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

	//String nombreHabitacion
	//	new (BibliotecaDeJuego juego){
	//		this.juego = juego
	//	}
//	new() {
//		this.habitacionActual = new Habitacion
//
//	//this.laberintoActual = lab
//	}

//	def void crearHabitacion() {
//		habitacionActual.crearYAgregarHabitacion(habitacionActual, laberintoActual)
//	}
	
	def void crearYAgregarHabitacion(){
		laberintoActual.agregarHabitacion(habitacionActual)
	}
			

}
