package appModels

import commons.GatoEncerradoCommons
import dominioElementosDeljuego.AccionIrAOtraHabitacion
import dominioElementosDeljuego.Habitacion
import dominioElementosDeljuego.Laberinto
import gatoEncerradoExceptions.AgregarAccionException
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable

@Accessors
@Observable
class AgregarAccionIrAOtraHabitacionAppModel extends AgregarAccionAppModel {

	//esta habitacion y laberinto que recibo por parametro es la habitacionSeleccionada de la clase BibliotecaDeJuegoAppModel
	new(Habitacion hab, Laberinto lab) {
		this.habitacionActual = hab
		this.laberintoActual = lab

	}

	def void crearYAgregarAccionDeIrOtraHabitacion() {
		if (habitacionActual == null) {
			throw new AgregarAccionException(GatoEncerradoCommons.AGREGAR_ACCION_EXCEPTION)
		}
		if (habitacionDestino == habitacionActual) {
			throw new AgregarAccionException(GatoEncerradoCommons.AGREGAR_ACCION_IR_HABITACION_EXCEPTION)
		}
		accionActual = new AccionIrAOtraHabitacion(habitacionDestino)
		accionActual.asignarAHabitacion(habitacionActual)
	}

}
