package dominioElementosDeljuego

import java.util.List
import java.util.ArrayList
import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
abstract class ResultadoAccion {
	Jugador jug
	TipoDeAccion tipo;
	List<Dato> datos = new ArrayList
	
	
	def List<Dato> getDatos();
}
//	new ResultadoAccion(){
//			.conTipo(ResultadoAccion.TiposDeResultados.USAR_ITEM)
//			.conUsuario(usuario)
//			.conAccionesDisponibles(estadoDelJuego.accionesPara(habitacion))
//			.conInventario(estadoDelJuego.inventario())
//			.build();
//	}
//	