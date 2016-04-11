import dominioElementosDeljuego.Administrador
import org.uqbar.arena.layout.HorizontalLayout
import org.uqbar.arena.widgets.Button
import org.uqbar.arena.widgets.Label
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.widgets.TextBox
import org.uqbar.arena.windows.SimpleWindow
import org.uqbar.arena.windows.WindowOwner

import static extension org.uqbar.arena.xtend.ArenaXtendExtensions.*
import dominioElementosDeljuego.BibliotecaDeJuego

class AgregarLaberintoWindow extends SimpleWindow<AgregarLaberintoAppModel>{
	new(WindowOwner owner, BibliotecaDeJuego biblioteca) {
		super(owner, new AgregarLaberintoAppModel(biblioteca))
		this.title = "Agregar Laberinto"
	}

	
	override protected createFormPanel(Panel mainPanel) {
		new Label(mainPanel).text = "Escriba el Nombre del Laberinto a crear"
		new TextBox(mainPanel) => [
			value <=> "nombreLaberinto"
		]
		val botonera = new Panel(mainPanel)
		botonera.layout = new HorizontalLayout

		new Button(botonera) => [
			caption = "Crear Laberinto"
			setAsDefault()
			onClick[|
				modelObject.crearLaberinto
				this.close
			]
		]
		new Button(botonera) => [
			caption = "Cancelar"
			onClick[|this.close]
		]
	}
	
	override protected addActions(Panel actionsPanel) {
	}

	
}