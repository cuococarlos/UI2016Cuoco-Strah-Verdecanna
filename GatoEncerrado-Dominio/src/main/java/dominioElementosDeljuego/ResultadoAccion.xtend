package dominioElementosDeljuego

import java.util.List

abstract class ResultadoAccion {
	
	TipoDeAccion tipo;
	List<Dato> datos;
	
	
	def List<Dato> getDatos();
	
	
}