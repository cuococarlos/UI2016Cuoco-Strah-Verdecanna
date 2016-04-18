package appModels

import dominioElementosDeljuego.Accion
import dominioElementosDeljuego.Habitacion
import dominioElementosDeljuego.Laberinto
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable

@Accessors
@Observable
class AgregarAccionAppModel {

	protected Habitacion habitacionActual
	protected Habitacion habitacionDestino
	protected Accion accionActual
	protected Laberinto laberintoActual

	new() {
	}

	new(Laberinto lab, Habitacion hab) {
		laberintoActual = lab
		habitacionActual = hab
	}

}
