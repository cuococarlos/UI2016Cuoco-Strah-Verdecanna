package dominioElementosDeljuego

import java.util.List
import java.util.ArrayList
import java.util.Map
import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
class EstadoDeJuego {
	
	List<Item> inventario
	Boolean ganado  // ver de que manera se gana para poner en true
	Habitacion habitacionActual
	Map<Integer, List<Accion>> accionesDePartida   
	
 
	new(Habitacion habitacionInicial){
		inventario = new ArrayList<Item>();
		ganado = false
		habitacionActual = habitacionInicial
	}
	
	
	def realizarAccion(Accion accion) {
		accionesDePartida.get(habitacionActual.id).remove(accion)
		//revisar si efectivamente la accion borrada se refleja en el mapa
	}


	def agregarAlInventario(Item item) {
		this.inventario.add(item)
	}


	def chequearAccionYaRealizada(Accion accion) {
		return ! this.accionesDePartida.get(habitacionActual.id).contains(accion)
	}

	
	def irAHabitacion(Habitacion habitacion) {
		habitacionActual = habitacion
	}

	
	def tengoItemParaUsar(Item item) {
		return this.inventario.contains(item)
	}

	
	def sacarDelInventario(Item item) {
		this.inventario.remove(item)
	}
	
	def agregarAccionDePartida(AccionUsarUnElemento accionUsar) {
		var List<Accion> aux = accionesDePartida.get(habitacionActual.id)
		aux.add(accionUsar.accionRevelada)
		accionesDePartida.put(this.habitacionActual.id, aux) 
	}

	def List<Accion> accionesPartidaDeHab(Habitacion hab)
	{
		return accionesDePartida.get(hab.id)
		
	}
}