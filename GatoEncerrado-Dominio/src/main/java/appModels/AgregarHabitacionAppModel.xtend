package appModels

import commons.GatoEncerradoCommons
import dominioElementosDeljuego.Laberinto
import gatoEncerradoExceptions.AgregarHabitacionException
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable

@Accessors
@Observable
class AgregarHabitacionAppModel {

	//BibliotecaDeJuego juego
	Laberinto laberintoActual
	String nombreHabitacion
	
	
	def String getNombreHabitacion(){
		return nombreHabitacion
	}
	
	
	def void setNombreHabitacion(String nombre){
		this.nombreHabitacion = nombre
	}
	

	//este laberinto que recibo por parametro es el laberintoSeleccionado de la clase BibliotecaDeJuegoAppModel
	new(Laberinto laberinto){
		this.laberintoActual = laberinto 
	}
	
	def void crearYAgregarHabitacion(){
		if (laberintoActual == null) {
			throw new AgregarHabitacionException(GatoEncerradoCommons.AGREGAR_HABITACION_EXCEPTION)
		}
		if(nombreHabitacion == null){
			throw new AgregarHabitacionException(GatoEncerradoCommons.NOMBRE_HABITACION_VACIA_EXCEPTION)
		}
		laberintoActual.agregarHabitacion(nombreHabitacion)
	}
			

}