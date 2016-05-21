package dominioElementosDeljuego

import java.util.ArrayList
import java.util.List
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable
import java.util.Map
import java.util.HashMap

@Observable
@Accessors
class Jugador {
	
	
    Laberinto  actuallaberinto
	Map<Integer, EstadoDeJuego> partidas


	new(){
		partidas = new HashMap<Integer, EstadoDeJuego>();	
	}

	
	def pasarDeHabitacion(Habitacion habitacion) {
		actuallaberinto.cambiarHabitacionDeJuego(habitacion)
	}
	

	def void ejecutar(AccionUsarUnElemento accionDeUsar){
		if(!this.traerPartida(actuallaberinto).chequearAccionYaRealizada(accionDeUsar) && this.traerPartida(actuallaberinto).tengoItemParaUsar(accionDeUsar.itemN)){
			this.traerPartida(actuallaberinto).sacarDelInventario(accionDeUsar.itemN)
			this.traerPartida(actuallaberinto).agregarAccionDePartida(accionDeUsar)
			this.traerPartida(actuallaberinto).realizarAccion(accionDeUsar)
		}
	}
	
	
	def void ejecutar(AccionAgarrarUnElemento accionDeAgarrar){
		if(!this.traerPartida(actuallaberinto).chequearAccionYaRealizada(accionDeAgarrar)){
			this.traerPartida(actuallaberinto).agregarAlInventario(accionDeAgarrar.itemN)
			this.traerPartida(actuallaberinto).realizarAccion(accionDeAgarrar)
		}
	}
	
	
	
	def void ejecutar(AccionIrAOtraHabitacion accionIr){
		if(!this.traerPartida(actuallaberinto).chequearAccionYaRealizada(accionIr)){
			this.traerPartida(actuallaberinto).irAHabitacion(accionIr.habitacionDestino)
		}
	}
	
	
	def EstadoDeJuego traerPartida(Laberinto laberinto){
	 	if(!partidas.containsKey(laberinto.id)){
			partidas.put(laberinto.id,new EstadoDeJuego(laberinto))
			
		}
		return partidas.get(laberinto.id)
	}
	
}