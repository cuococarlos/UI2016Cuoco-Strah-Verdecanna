package appModels

import dominioElementosDeljuego.Accion
import dominioElementosDeljuego.Habitacion
import dominioElementosDeljuego.Laberinto
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable

@Accessors
@Observable
class AgregarAccionAppModel {
	//Laberinto laberintoActual
	//Habitacion habitacionActual
	protected Habitacion habitacionActual
	protected Habitacion habitacionDestino
	protected Accion accionActual
	protected Laberinto laberintoActual
	
//	protected Item itemParaAgregar
//	protected String nombreHabitacion
//	protected String itemHabitacion
	
	
	new(){}
	
	new(Laberinto lab,Habitacion hab){
		laberintoActual = lab
		habitacionActual = hab
	}
	
	
	
}