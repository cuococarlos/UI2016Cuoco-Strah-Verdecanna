package dominioElementosDeljuego

import java.util.List
import java.util.ArrayList
import java.util.Map

class EstadoDeJuego {
	
	List<Item> inventario
	List<Accion> accionesRealizadas
	Boolean ganado  // ver de que manera se gana para poner en true
	Habitacion habitacionActual
	Map<Integer, List<Accion>> accionesDePartida   
	
 
	new(Habitacion habitacionInicial){
		inventario = new ArrayList<Item>();
		accionesRealizadas = new ArrayList<Accion>();
		ganado = false
		habitacionActual = habitacionInicial
	}
	
	
	def realizarAccion(Accion accion) {
		this.accionesRealizadas.add(accion)
	}


	def agregarAlInventario(Item item) {
		this.inventario.add(item)
	}


	def chequearAccionYaRealizada(Accion accion) {
		return this.accionesRealizadas.contains(accion)
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
		var List<Accion> aux = accionesDePartida.get(this.habitacionActual.id)
		aux.add(accionUsar.accionRevelada)
		accionesDePartida.put(this.habitacionActual.id, aux) 
	}


}