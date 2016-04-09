package dominioElementosDeljuego

import java.util.ArrayList
import java.util.List
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable

@Accessors
@Observable
class Habitacion {
	val String nombre
	var List<Item> itemsHabitacion
	var List<Accion> acciones 
	var List <Habitacion> habitaciones 
	var  Boolean isHabitacionFinal
	var  Boolean isHabitacionInical
	
	new(){
		nombre=""
//Ojo esto es un parche horrible no deberia estar ,miremolo es para que no rompa la vista		
	}
	new(String n){
		
		nombre=n
		itemsHabitacion = new ArrayList<Item>
		acciones = new ArrayList <Accion>
		habitaciones = new ArrayList <Habitacion>
		isHabitacionFinal=false
		isHabitacionInical=false
	}
	
	/////////////////////////metodos///////////////////////////////
	//validacion para ver si la habitacion ya contiene ese Item
	def existeItem(Item i) {
		return itemsHabitacion.exists[item|item.equals(i)] 
	}
	
	def agregarAccion(Accion c){
		
		c.asignarAHabitacion(this)
	}

	def agregarElementoHabitacion(Item item) {
		//if (!existeItem) {
			itemsHabitacion.add(item)
			itemsHabitacion.forEach[i|println(i.nombre)]
			println(itemsHabitacion)


		//mostrar la lista de elementos actuales	
//		}else{
//			throw new Exception("El Item ya existe en esa habitacion")
//		}
	}
	
	def eliminarAccion(Accion a) {
		acciones.remove(a)
	}
	
	def sacarItemDeHabitacion(Item item) {
		itemsHabitacion.remove(item)
	}
	
}
