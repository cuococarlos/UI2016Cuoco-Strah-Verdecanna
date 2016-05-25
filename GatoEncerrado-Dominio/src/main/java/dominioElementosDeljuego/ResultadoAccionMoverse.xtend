package dominioElementosDeljuego

import java.util.List

class ResultadoAccionMoverse extends ResultadoAccion {
	
	Habitacion habitacionActual;
	
	
	new(Habitacion habitacionAcual){
		this.habitacionActual = habitacionActual;
	}
	
	override List<Dato> getDatos(){
		var List<Dato> datos = newArrayList;
		datos.add(new Dato ("habitacionActual", habitacionActual));
		return datos;
	}
}