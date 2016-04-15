

import dominioElementosDeljuego.Habitacion
import dominioElementosDeljuego.Laberinto
import dominioElementosDeljuego.AccionUsarUnElemento

class AgregarAccionUsarElementoAppModel extends AgregarAccionAppModel{
	
	
//esta habitacion y laberinto que recibo por parametro es la habitacionSeleccionada de la clase BibliotecaDeJuegoAppModel
	new(Habitacion hab,Laberinto lab){
		this.habitacionActual = hab
		this.laberintoActual=lab
		accionActual = new AccionUsarUnElemento
	}

	
	
	def void crearYAgregarAccionDeUsarUnElemento(){		
		accionActual.asignarAHabitacion(habitacionActual)
		habitacionActual.agregarAccion(accionActual)
		// agregar el elemento
		
	}
	
	
	
}