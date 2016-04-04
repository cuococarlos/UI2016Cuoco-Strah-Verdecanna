
import static extension org.uqbar.arena.xtend.ArenaXtendExtensions.*
import dominioElementosDeljuego.Habitacion
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.arena.layout.HorizontalLayout
import org.uqbar.arena.layout.VerticalLayout
import org.uqbar.arena.widgets.Button
import org.uqbar.arena.widgets.Label
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.widgets.TextBox
import org.uqbar.arena.windows.MainWindow
import org.uqbar.commons.utils.Observable
import dominioElementosDeljuego.Item

@SuppressWarnings("all")
@Accessors
@Observable

class AgregarItemWindow extends MainWindow<Item>{
	
	//var String textBox
	
		new() {
		super(new Item)
	}
	
	
	
	override createContents(Panel mainPanel) {
		this.title = "Agregar Accion de Agarrar un Elemento"
		new Label(mainPanel).text = "Escriba el elemento que aparecera en la Habitacion"
		new TextBox(mainPanel) => [
			
			//bindValueToProperty("textBox")
			//textBox = value				
			width =100
		]  

		mainPanel.layout = new VerticalLayout
		val botonera = new Panel(mainPanel)
		botonera.layout = new HorizontalLayout
		
		new Button(botonera) => [
			caption = "Agregar Elemento"
			//onClick[ | agregarElementoHabitacion(textBox)]
			
		]
		new Button(botonera).caption = "Cancelar"
				 	
	}
	
//	def agregarElementoHabitacion(String item){
//		//modelObject.agregarElementoHabitacion(item)
//		//howInfo("se agrego un elemento")
//	}
	
	def static main(String[] args) {
		new AgregarItemWindow().startApplication
	}
	
}