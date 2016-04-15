

import dominioElementosDeljuego.Habitacion
import dominioElementosDeljuego.Laberinto
import dominioElementosDeljuego.AccionAgarrarUnElemento
import dominioElementosDeljuego.Item
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable

@Accessors
@Observable
class AgregarAccionAgarrarElementoAppModel extends AgregarAccionAppModel{
	
//	Habitacion habitacionActual
//	Habitacion habitacionDestino
//	AccionIrAOtraHabitacion accionActual
//	Laberinto laberintoActual
	Item itemParaAgregar

	
//esta habitacion y laberinto que recibo por parametro es la habitacionSeleccionada de la clase BibliotecaDeJuegoAppModel        ESTO NO ESTA PASANDO!!!
	new(Habitacion habitacion, Laberinto laberinto){
		this.habitacionActual = habitacion
		this.laberintoActual = laberinto
		itemParaAgregar = new Item
		accionActual = new AccionAgarrarUnElemento
///  		
	}
	
	
	def void crearYAgregarAccionDeAgarrarElemento(){		
		accionActual.asignarAHabitacion(habitacionActual)
		habitacionActual.agregarAccion(accionActual)
		habitacionActual.agregarElementoALaHabitacion(itemParaAgregar)
	}
	
	
}