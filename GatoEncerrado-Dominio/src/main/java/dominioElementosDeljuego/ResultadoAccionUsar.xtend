package dominioElementosDeljuego

import java.util.List

class ResultadoAccionUsar extends ResultadoAccion {
	List<Accion> accionesPermitidasEnHabitacion
	List<Item> inventario
	
	new(List<Item> inventario,List<Accion>acciones){
		this.accionesPermitidasEnHabitacion=acciones
		this.inventario=inventario
	}
	
	override List<Dato> getDatos(){
		datos.add(new Dato ("accionesHabitacion", accionesPermitidasEnHabitacion));
		datos.add(new Dato ("Inventario",inventario));
		return datos;
	

}

}