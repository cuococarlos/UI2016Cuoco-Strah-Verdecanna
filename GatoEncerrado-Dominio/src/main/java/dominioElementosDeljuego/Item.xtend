package dominioElementosDeljuego

import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable

@Accessors
@Observable
class Item {
	
	var String nombre
	var String descripcion
	new(){}
	
	new(String name){
		nombre = name
	}
	
	def id() {
		this.hashCode
	}
	
//	def void setNombre(String nombre){
//		this.nombre = nombre
//	}
//	
//	def String getNombre(){
//		return this.nombre
//	}		
	
	
}
