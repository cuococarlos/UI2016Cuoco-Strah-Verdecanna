

import dominioElementosDeljuego.Habitacion
import dominioElementosDeljuego.AccionIrAOtraHabitacion
import dominioElementosDeljuego.Laberinto

class AgregarAccionIrAOtraHabitacionAppModel {
	Habitacion habitacionActual
	AccionIrAOtraHabitacion accionActual
	Laberinto laberintoActual
	
		//esta habitacion y laberinto que recibo por parametro es la habitacionSeleccionada de la clase BibliotecaDeJuegoAppModel
	new(Habitacion hab,Laberinto lab){
		this.habitacionActual = hab
		this.laberintoActual=lab
		accionActual = new AccionIrAOtraHabitacion
	}

	
	
	def void crearYAgregarAccionDeIrOtraHabitacion(){
		habitacionActual.agregarAccion(accionActual)
	}
		
	}