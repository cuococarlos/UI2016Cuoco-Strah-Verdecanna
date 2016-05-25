package dominioElementosDeljuego

import java.util.List

class ResultadoAccionMoverse extends ResultadoAccion {
	List<Accion> accionesPermitidasEnHabitacion
	Habitacion habitacionActual;
	
	
	new(Habitacion habitacionAcual,List<Accion> acciones){
		this.habitacionActual = habitacionActual;
		this.accionesPermitidasEnHabitacion=acciones
	}
	
	override List<Dato> getDatos(){
		datos.add(new Dato ("accionesHabitacion",accionesPermitidasEnHabitacion))
		datos.add(new Dato ("habitacionActual", habitacionActual));
		return datos;
	}
}