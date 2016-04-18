package appModels

import dominioElementosDeljuego.AccionUsarUnElemento
import dominioElementosDeljuego.Habitacion
import dominioElementosDeljuego.Item
import dominioElementosDeljuego.Laberinto
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable

@Accessors
@Observable
class AgregarAccionUsarElementoAppModel extends AgregarAccionAppModel {

	Item itemActual

	//esta habitacion y laberinto que recibo por parametro es la habitacionSeleccionada de la clase BibliotecaDeJuegoAppModel
	new(Habitacion hab, Laberinto lab) {
		this.habitacionActual = hab
		this.laberintoActual = lab

	//		itemParaAgregar = new Item
	//		accionActual = new AccionUsarUnElemento(itemParaAgregar)
	//		accionActual.asignarHabitacionDestino(habitacionActual)
	}

	def void crearYAgregarAccionDeUsarUnElemento() {
		accionActual = new AccionUsarUnElemento(itemActual)
		accionActual.asignarAHabitacion(habitacionActual)

	//this.accionActual = new AccionUsarUnElemento(itemActual)
	}

}
