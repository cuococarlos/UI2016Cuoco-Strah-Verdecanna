import dominioElementosDeljuego.Habitacion
import dominioElementosDeljuego.Laberinto
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable
import org.uqbar.commons.model.UserException
import gatoEncerradoExceptions.AgregarHabitacionException

@Observable
class AgregarHabitacionAppModel {

	//BibliotecaDeJuego juego
	Laberinto laberintoActual
	String nombreHabitacion
	
	
	def String getNombreHabitacion(){
		return nombreHabitacion
	}
	
	
	def void setNombreHabitacion(String nombre){
		this.nombreHabitacion = nombre
	}
	

	//este laberinto que recibo por parametro es el laberintoSeleccionado de la clase BibliotecaDeJuegoAppModel
	new(Laberinto laberinto){
		this.laberintoActual = laberinto 
	}
	
	def void crearYAgregarHabitacion(){
		if (laberintoActual == null) {
			throw new AgregarHabitacionException("Debe seleccionar un laberinto para poder agregarle una habitacion")
		}
		laberintoActual.agregarHabitacion(nombreHabitacion)
	}
			

}