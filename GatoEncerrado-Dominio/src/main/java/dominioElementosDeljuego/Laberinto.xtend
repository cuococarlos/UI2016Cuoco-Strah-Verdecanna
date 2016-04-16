package dominioElementosDeljuego

import java.util.ArrayList
import java.util.List
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable
import static org.uqbar.commons.model.ObservableUtils.*
import org.uqbar.commons.model.UserException
import gatoEncerradoExceptions.NombreYaExistenteException
import commons.GatoEncerradoCommons

@Observable
@Accessors
class Laberinto {
	List<Habitacion> habitacionesQueLaComponen
	Habitacion actualDeJuego
	Habitacion habitacionALaCualIr

	String nombreLaberinto

	new() {
		this.habitacionesQueLaComponen = new ArrayList<Habitacion>()
	}

	new(String nombre) {
		this()
		nombreLaberinto = nombre
	}

	def crearLaberinto(String lab) {
		val laberinto = new Laberinto
		laberinto.nombreLaberinto = lab

		return lab
	}

	def Habitacion comienzoLaberinto() {
	}

	def cambiarHabitacionDeJuego(Habitacion habitacion) {
		actualDeJuego = habitacion
	}

	def accionYaRealizada(AccionUsarUnElemento accionUsarUnElemento) {
		actualDeJuego.eliminarAccion(accionUsarUnElemento)
	}

	def sacarItem(Item item) {
		actualDeJuego.sacarItemDeHabitacion(item)
	}


	//(items <=> "laberintoSeleccionado.habitaciones") esta propiedad bindea contra este getter 
	def List<Habitacion> getHabitaciones() {
		return this.habitacionesQueLaComponen;
	}

	def void setHabitacionALaCualIr(Habitacion valor) {
		this.habitacionALaCualIr = valor;
	}

	def void agregarHabitacion(String nameHabitacion) {
		if (habitacionesQueLaComponen.exists[it.nombreHabitacion == nameHabitacion]) {
			throw new NombreYaExistenteException(GatoEncerradoCommons.NOMBRE_HABITACION_EXISTENTE_EXCEPTION + '''«nameHabitacion»''')
		}
		var Habitacion nuevaHabitacion = new Habitacion(nameHabitacion)
		this.habitacionesQueLaComponen.add(nuevaHabitacion)
	}
	
	def quitarHabitacion(Habitacion habitacion) {
		this.habitaciones.remove(habitacion)
		//el nombre de la property por la cual se bindea las habitaciones de un laberinto se llama "habitaciones" por el getter definido, sino 
		//la property se llamaria "habitacionesQueLaComponen"
		firePropertyChanged(this,"habitaciones",habitacionesQueLaComponen)
	}


	def List todosLosItems(){
	  //  this.habitacionesQueLaComponen.for[h| h.itemsHabitacion.] .Mensaje que se traiga la colecicon de todos los items
	}


}
