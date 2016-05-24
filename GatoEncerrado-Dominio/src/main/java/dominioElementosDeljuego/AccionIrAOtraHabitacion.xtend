package dominioElementosDeljuego
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable


@Accessors
@Observable
class AccionIrAOtraHabitacion extends Accion{
	
	String nombreAccion

	val PREFIJO_IR = "Ir a habitacion - "
	
	
	new(Habitacion hab) {
		habitacionDestino = hab
		this.nombreAccion = PREFIJO_IR + habitacionDestino.nombreHabitacion
	}
	
	
	
	override void asignarAHabitacion(Habitacion habitacion){ 
		super.asignarAHabitacion(habitacion)    ////
		//this.nombreAccion = PREFIJO_IR + habitacionDestino.nombreHabitacion   
	}		
	
	override ResultadoAccion ejecutar(Habitacion habitacion, Usuario usuario){
		this.validarAccionEjecutable(estadoDelJuego)
		sacarle del usuario y poner el comportamiento aca
		
		new ResultadoAccionBuilder()
			.conTipo(ResultadoAccion.TiposDeResultados.MOVERSE_DE_HABITACION)
			.conUsuario(usuario)
			.conHabitacionDestino(habitacionDestino)
			.buildResultadoMoverse();
	}


}
	