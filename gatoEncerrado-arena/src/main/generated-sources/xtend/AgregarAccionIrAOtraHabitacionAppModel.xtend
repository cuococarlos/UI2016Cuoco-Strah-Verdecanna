

import dominioElementosDeljuego.Habitacion
import dominioElementosDeljuego.AccionIrAOtraHabitacion
import dominioElementosDeljuego.Laberinto
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable
import gatoEncerradoExceptions.AgregarAccionException
import commons.GatoEncerradoCommons


@Accessors
@Observable
class AgregarAccionIrAOtraHabitacionAppModel extends AgregarAccionAppModel{


	
//esta habitacion y laberinto que recibo por parametro es la habitacionSeleccionada de la clase BibliotecaDeJuegoAppModel
	new(Habitacion hab,Laberinto lab){
		this.habitacionActual = hab
		this.laberintoActual=lab
		//accionActual = new AccionIrAOtraHabitacion(habitacionDestino)
	}

	
	
	def void crearYAgregarAccionDeIrOtraHabitacion(){	
		if (habitacionActual == null) {
			throw new AgregarAccionException(GatoEncerradoCommons.AGREGAR_ACCION_EXCEPTION)
		}	
		accionActual = new AccionIrAOtraHabitacion(habitacionDestino)
		accionActual.asignarAHabitacion(habitacionActual)	
	}
		
		
		
}