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
	
	
    EstadoDeJuego  partidaJugando
	Map<Integer, EstadoDeJuego> partidas


	new(){
		partidas = new HashMap<Integer, EstadoDeJuego>();	
	}

	
	
	
	//FIXME: por que el jugador esta orquestando cosas sin participar... 

	
	//FIXME: NO tiene sentido lo que estas haciendo aca, minimamente el nombre traerPartida no es expresivo con el dominio
	//a lo sumo iniciarPartida, y solo va al jugador si tiene responsabilidades que tomar
	def EstadoDeJuego inicializarPartida(Laberinto laberinto){
	 	if(!partidas.containsKey(laberinto.id)){
			partidas.put(laberinto.id,new EstadoDeJuego(laberinto))
			//??? si no la tiene lo creas... ok... entonces de nuevo por que se llama traer si inicializa
		}
		partidaJugando = partidas.get(laberinto.id)
		/*25-05 ,cuando se inicializa una partida,siempre (tambien en la primera)
		 se le asigna como la partida actual de juego
		 *
		 */
	}
	
	def traerPartidaActual() {
		partidaJugando
		
	}
	
	def actualizarEstado(EstadoDeJuego juego) {
		partidaJugando = juego
	}
	
}