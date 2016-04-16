import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable
import dominioElementosDeljuego.Laberinto
import dominioElementosDeljuego.Habitacion
import dominioElementosDeljuego.Accion

@Accessors
@Observable
class AgregarAccionAppModel {
	//Laberinto laberintoActual
	//Habitacion habitacionActual
	protected Habitacion habitacionActual
	protected Habitacion habitacionDestino
	protected Accion accionActual
	protected Laberinto laberintoActual
	
//	protected String nombreHabitacion
//	protected String itemHabitacion
	
	
	new(){}
	
	new(Laberinto lab,Habitacion hab){
		laberintoActual = lab
		habitacionActual = hab
	}
	
	
	
}