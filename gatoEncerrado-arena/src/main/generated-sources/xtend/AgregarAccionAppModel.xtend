import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable
import dominioElementosDeljuego.Laberinto
import dominioElementosDeljuego.Habitacion

@Accessors
@Observable
class AgregarAccionAppModel {
	Laberinto laberintoActual
	Habitacion habitacionActual
	
	new(Laberinto lab,Habitacion hab){
		laberintoActual=lab
		habitacionActual=hab
	}
	
	new() {
		//irar como sacar este constructor vacio
	}
	
	
}