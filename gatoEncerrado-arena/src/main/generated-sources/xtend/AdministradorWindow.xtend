import dominioElementosDeljuego.BibliotecaDeJuego
import dominioElementosDeljuego.Habitacion
import dominioElementosDeljuego.Laberinto
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

class AdministradorWindow extends SimpleWindow<BibliotecaDeJuegoAppModel> {

	new(WindowOwner parent, BibliotecaDeJuego model) {

		super(parent, new BibliotecaDeJuegoAppModel(model))
	}

	override protected addActions(Panel actionsPanel) {
	}

	override protected createFormPanel(Panel mainPanel) {
		this.title = "Aca Hay Gato Encerrado..."
		val Panel todo = new Panel(mainPanel)
		todo.layout = new HorizontalLayout
		laberintos(todo)
		habitacionesDelLaberinto(todo)
		acciones(todo)

	}
	//throw new UserException('''Ya existe el laberinto con nombre «nombre»''')
	def habitacionesDelLaberinto(Panel panel) {
		var panelDeHabitaciones = new Panel(panel)
		panelDeHabitaciones.layout = new VerticalLayout
		panelDeHabitaciones.width = 100
		//aca tengo que setear por defecto siempre el primer valor de la lista para que tome el nombre del laberinto
		new Label(panelDeHabitaciones).text = "Habitaciones de : " //+ modelObject.laberintoSeleccionado.nombreLaberinto //'''Habitaciones de «nombre»''' //

		new List(panelDeHabitaciones) => [
			(items <=> "laberintoSeleccionado.habitacionesQueLaComponen").adapter = new PropertyAdapter(Habitacion, "nombreHabitacion")
			value <=> "habitacionSeleccionada"
		]

		var botoneraAddLaberintos = new Panel(panelDeHabitaciones)
		botoneraAddLaberintos.layout = new HorizontalLayout
		new Button(botoneraAddLaberintos) => [
			caption = "Agregar Habitacion"
			onClick[|new AgregarHabitacionWindow(this, this.modelObject.laberintoSeleccionado).open]
		]

		new Button(botoneraAddLaberintos) => [
			caption = "Quitar Habitacion"
			onClick [|modelObject.quitarHabitacion()]
		]
	}

	def laberintos(Panel mainPanel) {
		var panelLaberintos = new Panel(mainPanel)
		new Label(panelLaberintos).text = "Laberintos"
		new List(panelLaberintos) => [
			(items <=> "juego.laberintos").adapter = new PropertyAdapter(Laberinto, "nombreLaberinto")
			value <=> "laberintoSeleccionado"
		]

		var botonera = new Panel(panelLaberintos)
		botonera.layout = new HorizontalLayout
		new Button(botonera) => [
			caption = "Agregar Laberinto"
			//aca navego hasta 
			onClick[|new AgregarLaberintoWindow(this, this.modelObject.juego).open()]
		]
		new Button(botonera) => [
			caption = "Quitar Laberinto"
			onClick[|modelObject.quitarLaberinto()]
		]
	}
	
	def acciones(Panel mainPanel){
		var panelAcciones = new Panel(mainPanel)
		panelAcciones.layout = new VerticalLayout
		new Label(panelAcciones).text = "Habitacion Seleccionada"
		
		var panelEsEstadoInicialHabitacion = new Panel(panelAcciones)
		panelEsEstadoInicialHabitacion.layout = new HorizontalLayout
		new Label(panelEsEstadoInicialHabitacion).text = "Es Habitacion Inicial?"
		new CheckBox(panelEsEstadoInicialHabitacion) => [
			//enabled <=> "habitacionSeleccionada.isHabitacionFinal" 
			value <=> "habitacionSeleccionada.isHabitacionInicial"
		]
		
		var panelEsEstadoFinalHabitacion = new Panel(panelAcciones)
		panelEsEstadoFinalHabitacion.layout = new HorizontalLayout
		new Label(panelEsEstadoFinalHabitacion).text = "Es Habitacion Final?"
		new CheckBox(panelEsEstadoFinalHabitacion) => [
			//enabled <=> "habitacionSeleccionada.isHabitacionInicial"
			value <=> "habitacionSeleccionada.isHabitacionFinal"
		]
		
		var panelListadoAccionesHabitacion = new Panel(panelAcciones)
		new Label(panelListadoAccionesHabitacion).text = "Acciones"
		new List(panelListadoAccionesHabitacion)=> [
			items <=> "habitacionSeleccionada.acciones"
		]
		
	 	var botoneraAcciones = new Panel(panelAcciones)
	 	botoneraAcciones.layout = new HorizontalLayout
	 	new Button(botoneraAcciones)=> [
	 		caption = "Agregar Accion"
	 			onClick[|new AgregarAccionWindow(this, this.modelObject.habitacionSeleccionada,this.modelObject.laberintoSeleccionado).open]
		]
		
	 	
	 	
	 	new Button(botoneraAcciones)=> [
	 		caption = "Quitar Accion"
	 	]
	}

}