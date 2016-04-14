import dominioElementosDeljuego.Administrador
import dominioElementosDeljuego.BibliotecaDeJuego
import org.uqbar.arena.layout.HorizontalLayout
import org.uqbar.arena.widgets.Button
import org.uqbar.arena.widgets.List
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.windows.SimpleWindow
import org.uqbar.arena.windows.WindowOwner

import static extension org.uqbar.arena.xtend.ArenaXtendExtensions.*
import org.uqbar.arena.layout.VerticalLayout
import org.uqbar.arena.bindings.PropertyAdapter
import dominioElementosDeljuego.Laberinto
import dominioElementosDeljuego.Habitacion
import static org.uqbar.commons.model.ObservableUtils.*
import org.uqbar.arena.widgets.Label

class AdministradorWindow extends SimpleWindow<BibliotecaDeJuegoAppModel> {

	new(WindowOwner parent, BibliotecaDeJuego model) {

		super(parent, new BibliotecaDeJuegoAppModel(model))
	}

	override protected addActions(Panel actionsPanel) {
	}

	override protected createFormPanel(Panel mainPanel) {
		this.title = "Aca Hay Gato Encerrado"
		val Panel todo = new Panel(mainPanel)
		todo.layout = new HorizontalLayout
		laberintos(todo)
		habitacionesDelLaberinto(todo)

	}

	def habitacionesDelLaberinto(Panel panel) {
		var panelDeHabitaciones = new Panel(panel)
		panelDeHabitaciones.layout = new VerticalLayout

		new List(panelDeHabitaciones) => [
			(items <=> "laberintoSeleccionado.habitaciones").adapter = new PropertyAdapter(Habitacion, "nombre")
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

		new List(panelLaberintos) => [
			(items <=> "juego.laberintos").adapter = new PropertyAdapter(Laberinto, "nombreLaberinto")
			value <=> "laberintoSeleccionado"
		]

		var botonera = new Panel(panelLaberintos)
		botonera.layout = new HorizontalLayout
		new Button(botonera) => [
			caption = "Agregar Laberinto"
			onClick[|new AgregarLaberintoWindow(this, this.modelObject.juego).open()]
		]
		new Button(botonera) => [
			caption = "Quitar Laberinto"
			onClick[|modelObject.quitarLaberinto()]
		]

	}

}
