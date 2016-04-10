

import org.uqbar.arena.windows.Dialog
import dominioElementosDeljuego.Administrador
import org.uqbar.arena.windows.WindowOwner
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.widgets.Label
import org.uqbar.arena.widgets.TextBox
import org.uqbar.arena.layout.HorizontalLayout
import org.uqbar.arena.widgets.Button
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable
import dominioElementosDeljuego.Laberinto

@Accessors
@Observable
class AgregarLaberintoWindow extends Dialog<Administrador>{
	
	//var String nombreLaberinto
	
	
	
	override protected createFormPanel(Panel mainPanel) {
		this.title = "Agregar Laberinto"
		new Label(mainPanel).text = "Escriba el Nombre del Laberinto a crear"
		new TextBox(mainPanel) => [
			
			//value <=> "model.laberinto.nombreLaberinto"
			
			
			//bindValueToProperty("model.biblioteca.laberintos")
			height = 20
			width = 100
			//////
		]
		val botonera = new Panel(mainPanel)
		botonera.layout = new HorizontalLayout

		new Button(botonera) => [
			caption = "Crear Laberinto"
			setAsDefault() //se asocia al Enter del Usuario
			onClick[]
		]
		new Button(botonera) => [
			caption = "Cancelar"
//			onClick[|resetearTextBox ]
		]
	}
	
	
}