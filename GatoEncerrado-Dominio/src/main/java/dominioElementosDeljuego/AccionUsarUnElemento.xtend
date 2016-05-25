package dominioElementosDeljuego


import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable

@Accessors
@Observable
class AccionUsarUnElemento extends Accion{
	
//	var Item item
	String nombreAccion  //Ojo es un parche,buscar solucion mejor	
	val PREFIJO_USAR = "Usar un - "
	Accion accionRevelada  // es la accion que se habilita cuando se ejecuta la Accion que la contiene...
	
	
	new(){}
		
	new(Item nuevoItem, Accion accionARevelar){
		itemN = nuevoItem
		this.nombreAccion = PREFIJO_USAR + itemN.nombre
		this.accionRevelada = accionARevelar			
	}
		

	override  ejecutar(Jugador jugador,Habitacion hab){
		val estadoDeJuego= jugador.traerPartidaActual()		
		if(this.chequearSiSePuedeEjecutarAccion(estadoDeJuego)&&
		     estadoDeJuego.chequearItemEnInventario(this.itemN))
		{
			estadoDeJuego.sacarDelInventario(this.itemN)
			estadoDeJuego.agregarAccionDePartida(this)
			estadoDeJuego.realizarAccion(this)
		}
		//25-05:OJO aca si no se ejecuta no hay que tirar una exception
		jugador.actualizarEstado(estadoDeJuego)
	}
	
	
//	override ResultadoAccion ejecutar(Habitacion habitacion, Usuario usuario){
//		this.validarAccionEjecutable(estadoDelJuego)
//		estadoDelJuego.sacarDelInventario(item)
//		estadoDelJuego.agregarAccion(accionRevelada)
//		
//		new ResultadoAccion()
//			.conTipo(ResultadoAccion.TiposDeResultados.USAR_ITEM)
//			.conUsuario(usuario)
//			.conAccionesDisponibles(estadoDelJuego.accionesPara(habitacion))
//			.conInventario(estadoDelJuego.inventario())
//			.build();
//	}
//	

	override void asignarAHabitacion(Habitacion habitacion){
	    super.asignarAHabitacion(habitacion)
	    //this.nombreAccion = PREFIJO_USAR + itemN.nombre
	}
	
	
	
}