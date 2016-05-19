package appModels

import dominioElementosDeljuego.Habitacion
import dominioElementosDeljuego.Laberinto
import dominioElementosDeljuego.AccionUsarUnElemento
import org.uqbar.commons.utils.Observable
import org.eclipse.xtend.lib.annotations.Accessors
import dominioElementosDeljuego.Item
import commons.GatoEncerradoCommons
import gatoEncerradoExceptions.AgregarAccionException

@Accessors
@Observable
class AgregarAccionUsarElementoAppModel extends AgregarAccionAppModel {

	Item itemActual

	//esta habitacion y laberinto que recibo por parametro es la habitacionSeleccionada de la clase BibliotecaDeJuegoAppModel
	new(Habitacion hab, Laberinto lab) {
		this.habitacionActual = hab
		this.laberintoActual = lab

	}

	def void crearYAgregarAccionDeUsarUnElemento() {
		if (itemActual == null) {
			throw new AgregarAccionException(GatoEncerradoCommons.AGREGAR_ACCION_USAR_UN_ELEMENTO_VACIO)
		}
/**
 *   hay que ver como pasar una accion en este parametro 
 */		
//		accionActual = new AccionUsarUnElemento(itemActual)   new Accion ??
		accionActual.asignarAHabitacion(habitacionActual)

	}

}
