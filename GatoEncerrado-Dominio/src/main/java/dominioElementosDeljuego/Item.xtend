package dominioElementosDeljuego

import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable

@Accessors
@Observable
class Item {
	
	var String nombre
	
	new(){}
	
	new(String name){
		nombre = name
	}
	
//	def void setNombre(String nombre){
//		this.nombre = nombre
//	}
//	
//	def String getNombre(){
//		return this.nombre
//	}		
	
	
}
