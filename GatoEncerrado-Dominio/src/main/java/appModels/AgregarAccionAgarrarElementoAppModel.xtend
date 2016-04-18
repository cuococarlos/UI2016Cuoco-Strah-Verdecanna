package appModels

import commons.GatoEncerradoCommons
import dominioElementosDeljuego.AccionAgarrarUnElemento
import dominioElementosDeljuego.Habitacion
import dominioElementosDeljuego.Item
import dominioElementosDeljuego.Laberinto
import gatoEncerradoExceptions.AgregarAccionException
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable

@Accessors
@Observable
class AgregarAccionAgarrarElementoAppModel extends AgregarAccionAppModel{
	
	protected Item itemParaAgregar
	

	new(Habitacion habitacion, Laberinto laberinto){
		this.habitacionActual = habitacion
		this.laberintoActual = laberinto
		itemParaAgregar = new Item

	}
	
	
	def void crearYAgregarAccionDeAgarrarElemento(){
	if (itemParaAgregar.nombre == null) {
			throw new AgregarAccionException(GatoEncerradoCommons.AGREGAR_ACCION_ITEM_VACIO_EXCEPTION)
		}
		accionActual = new AccionAgarrarUnElemento(itemParaAgregar)
		accionActual.asignarHabitacionDestino(habitacionActual)
		accionActual.asignarAHabitacion(habitacionActual)
	}
	
	
}
