package dominioElementosDeljuego

import dominioElementosDeljuego.ResultadoAccion
import java.util.List

class ResultadoAccionAgarrar extends ResultadoAccion {
	List<Item> inventario
	List<Accion> accionesPermitidasEnHabitacion
	
		new(List<Item> inventario,List<Accion>acciones){
		this.accionesPermitidasEnHabitacion=acciones
		this.inventario=inventario
	}
	
	
		override List<Dato> getDatos(){
		datos.add(new Dato ("inventario", inventario));
		datos.add(new Dato ("accionesPermitidas", accionesPermitidasEnHabitacion));
		return datos;
	}
	
}