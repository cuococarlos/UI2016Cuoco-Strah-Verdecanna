package dominioElementosDeljuego

import java.util.ArrayList
import java.util.List
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable

@Accessors
@Observable
class Habitacion {

	var List<Item> itemsHabitacion = new ArrayList<Item>
	String textBox

	/////////////////////////metodos///////////////////////////////
	//validacion para ver si la habitacion ya contiene ese Item
	def existeItem() {
		return itemsHabitacion.exists[item|item.nombre.equals(textBox)] //contains(textBox)
	}

	def agregarElementoHabitacion() {
		//if (!existeItem) {
			val Item item = new Item
			item.nombre = textBox
			itemsHabitacion.add(item)
			itemsHabitacion.forEach[i|println(i.nombre)]
			println(itemsHabitacion)

		//mostrar la lista de elementos actuales	
//		}else{
//			throw new Exception("El Item ya existe en esa habitacion")
//		}
	}
}
