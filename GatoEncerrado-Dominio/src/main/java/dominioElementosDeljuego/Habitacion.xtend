package dominioElementosDeljuego

import java.util.ArrayList
import java.util.List
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable

@Observable
@Accessors
class Habitacion {
	
	 String nombreLaberinto
	 List<Item> itemsHabitacion
	 List<Accion> acciones 
	 List <Habitacion> habitaciones 
	 Boolean isHabitacionFinal
	 Boolean isHabitacionInicial
	
	String nombreHabitacion
	
	
	new(String nombre) {
		this()
		nombreHabitacion = nombre
	}

	new(){
		itemsHabitacion = new ArrayList<Item>
		acciones = new ArrayList <Accion>
		habitaciones = new ArrayList <Habitacion>
		isHabitacionFinal=false
		isHabitacionInicial=false
//Ojo esto es un parche horrible no deberia estar ,miremolo es para que no rompa la vista		
	}
	
	def crearHabitacion(String nombreHabitacion) {
		val habitacion = new Habitacion
		habitacion.nombreHabitacion = nombreHabitacion
		return nombreHabitacion
	}
	
	
	/////////////////////////metodos///////////////////////////////
	//validacion para ver si la habitacion ya contiene ese Item
	
	def getIsHabitacionFinal(){
		if(isHabitacionInicial){
			isHabitacionInicial = false	
		}
		return this.isHabitacionFinal
	}
	
	def getIsHabitacionInicial(){
		if(isHabitacionFinal){
			isHabitacionFinal = false	
		}
		return this.isHabitacionInicial
	}
	
	
	def existeItem(Item i) {
		return itemsHabitacion.exists[item|item.equals(i)] 
	}
	
	
	def agregarAccion(Accion accion){		
		acciones.add(accion)
	}


	def agregarElementoALaHabitacion(Item item) {
		//if (!existeItem) {
			itemsHabitacion.add(item)
		//mostrar la lista de elementos actuales	
//		}else{
//			throw new Exception("El Item ya existe en esa habitacion")
//		}
	}
	
	def eliminarAccion(Accion accion) {
		acciones.remove(accion)
	}
	
	def sacarItemDeHabitacion(Item item) {
		itemsHabitacion.remove(item)
	}
	
	def crearYAgregarHabitacion(Habitacion habitacion, Laberinto laberinto) {
		laberinto.habitaciones.add(habitacion)
	}
	
}