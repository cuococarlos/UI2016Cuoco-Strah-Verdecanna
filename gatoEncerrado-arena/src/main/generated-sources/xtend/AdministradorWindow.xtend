import commons.GatoEncerradoCommons
import dominioElementosDeljuego.BibliotecaDeJuego
import dominioElementosDeljuego.Habitacion
import dominioElementosDeljuego.Laberinto
import gatoEncerradoExceptions.AgregarAccionException
import gatoEncerradoExceptions.AgregarHabitacionException
import org.uqbar.arena.bindings.NotNullObservable
import org.uqbar.arena.bindings.PropertyAdapter
import org.uqbar.arena.layout.HorizontalLayout
import org.uqbar.arena.layout.VerticalLayout
import org.uqbar.arena.widgets.Button
import org.uqbar.arena.widgets.CheckBox
import org.uqbar.arena.widgets.Label
import org.uqbar.arena.widgets.List
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.windows.SimpleWindow
import org.uqbar.arena.windows.WindowOwner

import static extension org.uqbar.arena.xtend.ArenaXtendExtensions.*
import dominioElementosDeljuego.Accion

class AdministradorWindow extends SimpleWindow<BibliotecaDeJuegoAppModel> {

	new(WindowOwner parent, BibliotecaDeJuego model) {
		super(parent, new BibliotecaDeJuegoAppModel(model))
	}

	override protected addActions(Panel actionsPanel) {
	}


// Panel principal
	override protected createFormPanel(Panel mainPanel) {
		this.title = "Aca Hay Gato Encerrado..."
		val Panel todo = new Panel(mainPanel)
		todo.layout = new HorizontalLayout
		laberintos(todo)
		habitacionesDelLaberinto(todo)
		acciones(todo)
	}
	
// -- INICIO --  Panel de Habitaciones   
	def habitacionesDelLaberinto(Panel panel) {
		var panelDeHabitaciones = new Panel(panel)
		panelDeHabitaciones.layout = new VerticalLayout
		panelDeHabitaciones.width = 300 minHeight = 250

		//aca tengo que setear por defecto siempre el primer valor de la lista para que tome el nombre del laberinto
		new Label(panelDeHabitaciones).text =  "Habitaciones de Laberinto: "   
		new Label(panelDeHabitaciones)=> [value <=> "laberintoSeleccionado.nombreLaberinto"]
		
		new List(panelDeHabitaciones) => [
			(items <=> "laberintoSeleccionado.habitacionesQueLaComponen").adapter = new PropertyAdapter(Habitacion,
				"nombreHabitacion")
			value <=> "habitacionSeleccionada"
			width = 200
			height = 100
		]

		var botoneraAddLaberintos = new Panel(panelDeHabitaciones)
		botoneraAddLaberintos.layout = new HorizontalLayout
		
		new Button(botoneraAddLaberintos) => [
			caption = "Agregar Habitacion"
			onClick[| IrAPantallaAgregarHabitacion ]
		]
		new Button(botoneraAddLaberintos) => [
			caption = "Quitar Habitacion"
			bindEnabled(new NotNullObservable("habitacionSeleccionada"))
			onClick [| modelObject.quitarHabitacion() ]
		]
	}
// -- FIN --  Panel de Habitaciones


// -- INICIO --  Panel de Laberintos
	def laberintos(Panel mainPanel) {
		var panelLaberintos = new Panel(mainPanel)
		panelLaberintos.width = 300 minHeight = 250
		new Label(panelLaberintos).text = "Laberintos"
		new Label(panelLaberintos).text =  ""
		new List(panelLaberintos) => [
			(items <=> "juego.laberintos").adapter = new PropertyAdapter(Laberinto, "nombreLaberinto")
			value <=> "laberintoSeleccionado"
			width = 200
			height = 100
		]

		var botonera = new Panel(panelLaberintos)
		botonera.layout = new HorizontalLayout
		
		new Button(botonera) => [
			caption = "Agregar Laberinto"
			onClick[| IrAPantallaAgregarLaberinto ]
		]
		
		new Button(botonera) => [
			caption = "Quitar Laberinto"
			bindEnabled(new NotNullObservable("laberintoSeleccionado"))
			onClick[|modelObject.quitarLaberinto()]
		]
	}	
// -- FIN --  Panel de Laberintos	
	
	
// -- INICIO --  Panel de Acciones	
	def acciones(Panel mainPanel){
		var panelAcciones = new Panel(mainPanel)
		panelAcciones.layout = new VerticalLayout
		panelAcciones.width = 300 minHeight = 250
		new Label(panelAcciones).text = "Habitacion Seleccionada:"
		new Label(panelAcciones)=> [value <=> "habitacionSeleccionada.nombreHabitacion"]
		
		var panelEsEstadoInicialHabitacion = new Panel(panelAcciones)
		panelEsEstadoInicialHabitacion.layout = new HorizontalLayout
		new Label(panelEsEstadoInicialHabitacion).text = "Es Inicial?"
		new CheckBox(panelEsEstadoInicialHabitacion) => [
			bindEnabled(new NotNullObservable("habitacionSeleccionada"))
			value <=> "habitacionSeleccionada.isHabitacionInicial"
		]

		var panelEsEstadoFinalHabitacion = new Panel(panelAcciones)
		panelEsEstadoFinalHabitacion.layout = new HorizontalLayout
		new Label(panelEsEstadoFinalHabitacion).text = "Es Final?"
		new CheckBox(panelEsEstadoFinalHabitacion) => [
			bindEnabled(new NotNullObservable("habitacionSeleccionada"))
			value <=> "habitacionSeleccionada.isHabitacionFinal"
		]

		var panelListadoAccionesHabitacion = new Panel(panelAcciones)
		new Label(panelListadoAccionesHabitacion).text = "Acciones"

		new List(panelListadoAccionesHabitacion)=> [
			(items <=> "habitacionSeleccionada.acciones").adapter = new PropertyAdapter(Accion, "nombreAccion")
			width = 160
			height = 90
		]
		
	 	var botoneraAcciones = new Panel(panelAcciones)
	 	botoneraAcciones.layout = new HorizontalLayout
	 	
	 	new Button(botoneraAcciones) => [
	 		caption = "Agregar Accion"
	 			onClick[| IrAPantallaAgregarAccion ]
		]	 	
	 	new Button(botoneraAcciones)=> [
	 		caption = "Quitar Accion"
	 	]
	}
// -- FIN --  Panel de Acciones	
	
	
//   Metodos

	def IrAPantallaAgregarAccion() {
		if (this.modelObject.habitacionSeleccionada == null) {
			throw new AgregarAccionException(GatoEncerradoCommons.AGREGAR_ACCION_EXCEPTION)
		}
		new AgregarAccionWindow(this, this.modelObject.habitacionSeleccionada, this.modelObject.laberintoSeleccionado).open
	}

	def IrAPantallaAgregarHabitacion() {
		if (this.modelObject.laberintoSeleccionado == null) {
			throw new AgregarHabitacionException(GatoEncerradoCommons.AGREGAR_HABITACION_EXCEPTION)
		}
		new AgregarHabitacionWindow(this, this.modelObject.laberintoSeleccionado).open
	}

	def IrAPantallaAgregarLaberinto() {
		new AgregarLaberintoWindow(this, this.modelObject.juego).open()
	}

	// este metodo no se usa, ver  	firePropertyChanged(this,"laberintos", laberintos)  de   BibliotecaDeJuego
	def String getNombreLaberintoSeleccionado() {

		//	firePropertyChanged(this,"laberintos", laberintos)
		return modelObject.laberintoSeleccionado.nombreLaberinto
	}

}

