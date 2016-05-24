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
	


//FIXME: rompen el encapsulamiento, le dan responsabilidades que no tiene que tener el Jugador
	//FIXME: por que el jugador esta orquestando cosas sin participar...
	def dispatch ejecutar(AccionUsarUnElemento accionDeUsar){
		if(!this.traerPartida(actuallaberinto).chequearAccionYaRealizada(accionDeUsar) && this.traerPartida(actuallaberinto).tengoItemParaUsar(accionDeUsar.itemN)){
			this.traerPartida(actuallaberinto).sacarDelInventario(accionDeUsar.itemN)
			this.traerPartida(actuallaberinto).agregarAccionDePartida(accionDeUsar)
			this.traerPartida(actuallaberinto).realizarAccion(accionDeUsar)
		}
	}
	
	
	
	//FIXME: por que el jugador esta orquestando cosas sin participar...
	def dispatch ejecutar(AccionAgarrarUnElemento accionDeAgarrar){
		if(!this.traerPartida(actuallaberinto).chequearAccionYaRealizada(accionDeAgarrar)){
			this.traerPartida(actuallaberinto).agregarAlInventario(accionDeAgarrar.itemN)
			this.traerPartida(actuallaberinto).realizarAccion(accionDeAgarrar)
		}
	}
	
	
	//FIXME: por que el jugador esta orquestando cosas sin participar... 
	def dispatch ejecutar(AccionIrAOtraHabitacion accionIr){
		if(!this.traerPartida(actuallaberinto).chequearAccionYaRealizada(accionIr)){
			this.traerPartida(actuallaberinto).irAHabitacion(accionIr.habitacionDestino)
		}
	}
	
	
	//FIXME: NO tiene sentido lo que estas haciendo aca, minimamente el nombre traerPartida no es expresivo con el dominio
	//a lo sumo iniciarPartida, y solo va al jugador si tiene responsabilidades que tomar
	def EstadoDeJuego traerPartida(Laberinto laberinto){
	 	if(!partidas.containsKey(laberinto.id)){
			partidas.put(laberinto.id,new EstadoDeJuego(laberinto))
			//??? si no la tiene lo creas... ok... entonces de nuevo por que se llama traer si inicializa
		}
		return partidas.get(laberinto.id)
	}
	
}