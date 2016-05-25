package dominioElementosDeljuego

class Dato {
	
	String nombre;	
	Object object;// Para que pueda pasarle cualquier tipo del dominio
	
	
	new(String nombre, Object elemDeDominio){
		this.nombre = nombre;
		this.object = elemDeDominio;
	}
	
	
		
}