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
	
	override def  ejecutar(Jugador jugador,Habitacion hab){
		val estadoDeJuego= jugador.traerPartidaActual()
		if(! this.chequearAccionYaRealizada(estadoDeJuego)){
			estadoDeJuego.irAHabitacion(this.habitacionDestino)
			jugador.actualizarEstado(estadoDeJuego)
		}
	}		
//		new ResultadoAccionBuilder()
//			.conTipo(ResultadoAccion.TiposDeResultados.MOVERSE_DE_HABITACION)
//			.conUsuario(usuario)
//			.conHabitacionDestino(habitacionDestino)
//			.buildResultadoMoverse();
//	}


}
	