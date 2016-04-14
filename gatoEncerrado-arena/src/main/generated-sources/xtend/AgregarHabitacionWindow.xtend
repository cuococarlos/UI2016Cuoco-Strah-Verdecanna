

import org.uqbar.arena.windows.SimpleWindow
import org.uqbar.arena.windows.WindowOwner
import org.uqbar.arena.widgets.Panel
import dominioElementosDeljuego.BibliotecaDeJuego
import org.uqbar.arena.widgets.Label
import org.uqbar.arena.widgets.TextBox
import static extension org.uqbar.arena.xtend.ArenaXtendExtensions.*
import org.uqbar.arena.layout.HorizontalLayout
import org.uqbar.arena.widgets.Button
import dominioElementosDeljuego.Laberinto

class AgregarHabitacionWindow extends SimpleWindow<AgregarHabitacionAppModel>{
	
	new(WindowOwner owner, Laberinto laberinto) {
		//super(owner, new AgregarHabitacionAppModel(biblioteca))
		super(owner, new AgregarHabitacionAppModel(laberinto))
		this.title = "Agregar Habitacion"
	}
	
	override protected createFormPanel(Panel mainPanel) {
		new Label(mainPanel).text = "Escriba el Nombre de la Habitacion a crear"
		new TextBox(mainPanel) => [
			value <=> "habitacionActual.nombre"
		]
		var botonera = new Panel(mainPanel)
		botonera.layout = new HorizontalLayout
		new Button(botonera)=> [
			caption = "Crear Habitacion"
			onClick [| modelObject.crearYAgregarHabitacion
				this.close
			]
		]
	}
	
	override protected addActions(Panel actionsPanel) {
	}
	
}