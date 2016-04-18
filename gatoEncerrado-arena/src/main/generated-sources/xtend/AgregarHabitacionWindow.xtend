import dominioElementosDeljuego.Laberinto
import org.uqbar.arena.layout.HorizontalLayout
import org.uqbar.arena.widgets.Button
import org.uqbar.arena.widgets.Label
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.widgets.TextBox
import org.uqbar.arena.windows.SimpleWindow
import org.uqbar.arena.windows.WindowOwner

import static extension org.uqbar.arena.xtend.ArenaXtendExtensions.*
import appModels.AgregarHabitacionAppModel

class AgregarHabitacionWindow extends SimpleWindow<AgregarHabitacionAppModel> {

	new(WindowOwner owner, Laberinto laberinto) {

		//super(owner, new AgregarHabitacionAppModel(biblioteca))
		super(owner, new AgregarHabitacionAppModel(laberinto))
		this.title = "Agregar Habitacion"
	}

	override protected createFormPanel(Panel mainPanel) {
		new Label(mainPanel).text = "Escriba el Nombre de la Habitacion a crear"
		new TextBox(mainPanel) => [
			value <=> "nombreHabitacion"
		]
		val botonera = new Panel(mainPanel)
		botonera.layout = new HorizontalLayout
		new Button(botonera) => [
			caption = "Crear Habitacion"
			setAsDefault()
			onClick [|
				modelObject.crearYAgregarHabitacion
				this.close
			]
			//setAsDefault()
			//onClick [|modelObject.crearYAgregarHabitacion]
		]

		new Button(botonera) => [
			caption = "Cancelar"
			onClick[this.close]
		]
	}

	override protected addActions(Panel actionsPanel) {
	}

}