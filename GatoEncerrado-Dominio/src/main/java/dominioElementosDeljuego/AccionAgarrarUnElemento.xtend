package dominioElementosDeljuego

import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable

@Accessors
@Observable
class AccionAgarrarUnElemento extends Accion{
	
//	var Item item
//	var Habitacion hab
	
String nombreAccion //Ojo que es un parche, mejorar si es posible	
	
	val PREFIJO_AGARRAR = "Agarrar - "
	
	new(){}
			
		
	new(Item nuevoItem){
		itemN = nuevoItem
		this.nombreAccion = PREFIJO_AGARRAR + itemN.nombre
	}
		
	override 	ejecutar(Jugador jugador,Habitacion hab){
		val estadoDeJuego= jugador.traerPartidaActual()		
		if(! this.chequearSiSePuedeEjecutarAccion(estadoDeJuego))
		{
			
			estadoDeJuego.agregarAlInventario(this.itemN)
			estadoDeJuego.realizarAccion(this)
		}
		jugador.actualizarEstado(estadoDeJuego)//25-05:Podria llamar a un Super para no invocar este metodo en todas las acciones???
		new ResultadoAccionAgarrar(estadoDeJuego.inventario,estadoDeJuego.accionesHabitacionActual)	
	}

	override void asignarAHabitacion(Habitacion habitacion){
	    super.asignarAHabitacion(habitacion)
	    habitacion.agregarElementoALaHabitacion(itemN)
	}
	
	
	
	
}