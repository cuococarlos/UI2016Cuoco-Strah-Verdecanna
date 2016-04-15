

import dominioElementosDeljuego.Habitacion
import dominioElementosDeljuego.AccionIrAOtraHabitacion
import dominioElementosDeljuego.Laberinto
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable

@Accessors
@Observable

class AgregarAccionIrAOtraHabitacionAppModel extends AgregarAccionAppModel{
//	Habitacion habitacionActual
//	Habitacion habitacionDestino
//	AccionIrAOtraHabitacion accionActual
//	Laberinto laberintoActual

	
//esta habitacion y laberinto que recibo por parametro es la habitacionSeleccionada de la clase BibliotecaDeJuegoAppModel
	new(Habitacion hab,Laberinto lab){
		this.habitacionActual = hab
		this.laberintoActual=lab
		accionActual = new AccionIrAOtraHabitacion
	}

	
	
	def void crearYAgregarAccionDeIrOtraHabitacion(){		
		accionActual.asignarHabitacionDestino(habitacionDestino)
		habitacionActual.agregarAccion(accionActual)
	}
		
		
		
}