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

class AdministradorWindow extends SimpleWindow<BibliotecaDeJuegoAppModel> {

	new(WindowOwner parent, BibliotecaDeJuego model) {
		
		super(parent, new BibliotecaDeJuegoAppModel(model))
	}

	override protected addActions(Panel actionsPanel) {
	}

	override protected createFormPanel(Panel mainPanel) {
		val Panel todo = new Panel(mainPanel)
		todo.layout = new HorizontalLayout
		laberintos(todo)
		habitacionesDelLaberinto(todo)
//		habitacionDelLaberinto(mainPanel)

	}
	
	def habitacionesDelLaberinto(Panel panel) {
		var panelDeHabitaciones = new Panel(panel)
		panelDeHabitaciones.layout = new VerticalLayout
		
		
		new List(panelDeHabitaciones) => [
			items <=> "laberintoSeleccionado.habitaciones"
		]
		
	}
	
	protected def laberintos(Panel mainPanel) {
		var panelLaberintos = new Panel(mainPanel)
		
		new List(panelLaberintos) => [
			items <=> "laberintos"
			value <=> "laberintoSeleccionado"
		]
		
		var botonera = new Panel(panelLaberintos)
		botonera.layout = new HorizontalLayout
		new Button(botonera) => [
			caption = "Agregar Laberinto"
			onClick[ | new AgregarLaberintoWindow(this, this.modelObject.juego).open()]
		]
	}


}

