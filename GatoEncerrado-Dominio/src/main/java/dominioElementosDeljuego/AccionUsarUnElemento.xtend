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
		


	
	override ResultadoAccion ejecutar(Habitacion habitacion, Usuario usuario){
		this.validarAccionEjecutable(estadoDelJuego)
		estadoDelJuego.sacarDelInventario(item)
		estadoDelJuego.agregarAccion(accionRevelada)
		
		new ResultadoAccion()
			.conTipo(ResultadoAccion.TiposDeResultados.USAR_ITEM)
			.conUsuario(usuario)
			.conAccionesDisponibles(estadoDelJuego.accionesPara(habitacion))
			.conInventario(estadoDelJuego.inventario())
			.build();
	}
	

	override void asignarAHabitacion(Habitacion habitacion){
	    super.asignarAHabitacion(habitacion)
	    //this.nombreAccion = PREFIJO_USAR + itemN.nombre
	}
	
	
	
}