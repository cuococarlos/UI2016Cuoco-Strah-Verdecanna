import dominioElementosDeljuego.Item
import static extension org.uqbar.arena.xtend.ArenaXtendExtensions.*
import org.uqbar.arena.layout.HorizontalLayout
import org.uqbar.arena.layout.VerticalLayout
import org.uqbar.arena.widgets.Button
import org.uqbar.arena.widgets.Label
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.widgets.TextBox
import org.uqbar.arena.windows.MainWindow
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable


@SuppressWarnings("all")
@Accessors
@Observable
class AgregarItemWindow extends MainWindow<Item>{
	
	var String textBox
	
		new() {
		super(new Item)
	}
	
	
	
	override createContents(Panel mainPanel) {
		this.title = "Agregar Accion de Agarrar un Elemento"
		new Label(mainPanel).text = "Escriba el elemento que aparecera en la Habitacion"
		new TextBox(mainPanel) => [
			
			bindValueToProperty("textBox")
			//textBox = value				
			width =100
		] /////////////// 
//		new KeyWordTextArea(mainPanel).value <=> "input"
		//new NumericField(mainPanel).value <=> "input"
		mainPanel.layout = new VerticalLayout
		val botonera = new Panel(mainPanel)
		botonera.layout = new HorizontalLayout
		
		new Button(botonera) => [
			caption = "Agregar Elemento"
			onClick[ | agregarElementoHabitacion(textBox)]
			
		]
		new Button(botonera).caption = "Cancelar"
		
		//new ErrorsPanel(mainPanel, "ok", 100)
		//creacion de un panel
//		val columnas = new Panel(mainPanel)
//		columnas.layout = new ColumnLayout(2) //le digo la cantidad de columnas que va a tener
//		val columnaIzquierda = new Panel(columnas)
//		new Label(columnaIzquierda).text = "Le pido que ingrese una fecha"
//		//new TextBox(columnaIzquierda).value <=> "fecha"
//		val columnaDerecha = new Panel(columnas)
//		new Label(columnaDerecha).text = "MaÃ±ana serÃ¡"
//		//new Label(columnaDerecha).value <=> "maniana"
		
		 	
	}
	
	def agregarElementoHabitacion(String item){
		//modelObject.agregarElementoHabitacion
		//howInfo("se agrego un elemento")
	}
	
	def static main(String[] args) {
		new AgregarItemWindow().startApplication
	}
	
}