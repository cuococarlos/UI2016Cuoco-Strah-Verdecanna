import dominioElementosDeljuego.Habitacion
import dominioElementosDeljuego.Laberinto
import dominioElementosDeljuego.AccionUsarUnElemento
import org.uqbar.commons.utils.Observable
import org.eclipse.xtend.lib.annotations.Accessors
import dominioElementosDeljuego.Item

@Accessors
@Observable
class AgregarAccionUsarElementoAppModel extends AgregarAccionAppModel{
	
	Item itemActual
	
//esta habitacion y laberinto que recibo por parametro es la habitacionSeleccionada de la clase BibliotecaDeJuegoAppModel
	new(Habitacion hab, Laberinto lab){
		this.habitacionActual = hab
		this.laberintoActual=lab
	}

	
	def void crearYAgregarAccionDeUsarUnElemento(){		
		accionActual.asignarAHabitacion(habitacionActual)
		this.accionActual = new AccionUsarUnElemento(itemActual)
	}
	
	
	
}