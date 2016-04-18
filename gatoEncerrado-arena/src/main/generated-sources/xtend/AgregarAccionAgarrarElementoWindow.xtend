import appModels.AgregarAccionAgarrarElementoAppModel
import dominioElementosDeljuego.Habitacion
import dominioElementosDeljuego.Laberinto
import org.uqbar.arena.layout.HorizontalLayout
import org.uqbar.arena.widgets.Button
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.widgets.TextBox
import org.uqbar.arena.windows.SimpleWindow
import org.uqbar.arena.windows.WindowOwner

import static extension org.uqbar.arena.xtend.ArenaXtendExtensions.*

class AgregarAccionAgarrarElementoWindow extends SimpleWindow<AgregarAccionAgarrarElementoAppModel>{
	
	new(WindowOwner owner, Habitacion hab,Laberinto lab) {
		super(owner, new AgregarAccionAgarrarElementoAppModel(hab,lab))
		title = "Agregar Accion de agarrar un elemento"
		taskDescription = "Escriba el Elemento que aparecerá en la habitación"
	}


	override protected createFormPanel(Panel mainPanel) {
//		this.title = "Agregar Accion de Agarrar un Elemento"		
//		new Label(mainPanel).text = "Escriba el Elemento que aparecerá en la habitación"
		new TextBox(mainPanel) => [
			value <=> "itemParaAgregar.nombre"
		]
		var botonera = new Panel(mainPanel)
		botonera.layout = new HorizontalLayout
		new Button(botonera) => [
			caption = "Agregar"
			onClick [| modelObject.crearYAgregarAccionDeAgarrarElemento()
						this.close
			]
		]

		new Button(botonera) => [
			caption = "Cancelar"
			onClick[this.close]
		]
	}
	
	
	override protected addActions(Panel actionsPanel) {
	}
	
	
	
}