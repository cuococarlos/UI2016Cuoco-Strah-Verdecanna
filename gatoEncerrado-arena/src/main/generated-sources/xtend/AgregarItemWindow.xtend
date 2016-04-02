

import org.uqbar.arena.windows.MainWindow
import org.uqbar.arena.widgets.Panel
import dominioElementosDeljuego.Item
import org.uqbar.arena.widgets.Label
import org.uqbar.arena.layout.VerticalLayout
import org.uqbar.arena.widgets.Button
import org.uqbar.arena.widgets.KeyWordTextArea
import org.uqbar.arena.widgets.Control
import org.uqbar.lacar.ui.model.ControlBuilder
import org.uqbar.arena.widgets.NumericField
import org.uqbar.arena.widgets.TextBox

@SuppressWarnings("all")
class AgregarItemWindow extends MainWindow<Item>{
	
		new() {
		super(new Item)
	}
	
	override createContents(Panel mainPanel) {
		this.title = "Agregar Accion de Agarrar un Elemento"
		new Label(mainPanel).text = "Escriba el elemento que aparecera en la Habitacion"
		new TextBox(mainPanel) => [
			
			width =100
		] 
//		new KeyWordTextArea(mainPanel).value <=> "input"
		//new NumericField(mainPanel).value <=> "input"
		mainPanel.layout = new VerticalLayout
		new Button(mainPanel).caption = "Aceptar"
		new Button(mainPanel).caption = "Cancelar" 	
	}
	
	def static main(String[] args) {
		new AgregarItemWindow().startApplication
	}
	
}