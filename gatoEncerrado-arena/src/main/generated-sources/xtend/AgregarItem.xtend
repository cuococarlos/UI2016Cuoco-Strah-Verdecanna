import dominioElementosDeljuego.Habitacion
import org.uqbar.arena.layout.HorizontalLayout
import org.uqbar.arena.layout.VerticalLayout
import org.uqbar.arena.widgets.Button
import org.uqbar.arena.widgets.Label
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.widgets.TextBox
import org.uqbar.arena.windows.MainWindow

class AgregarItem extends MainWindow<Habitacion> {


	new() {
		super(new Habitacion())
	}

	override createContents(Panel mainPanel) {

		this.title = "Agregar Accion de Agarrar un Elemento"
		new Label(mainPanel).text = "Escriba el elemento que aparecera en la Habitacion"
		new TextBox(mainPanel) => [
			bindValueToProperty("textBox")
			//textBox = value
			height = 20
			width = 100
			//////
		]

		mainPanel.layout = new VerticalLayout
		val botonera = new Panel(mainPanel)
		botonera.layout = new HorizontalLayout

		new Button(botonera) => [
			caption = "Agregar Elemento"
			setAsDefault() //se asocia al Enter del Usuario
			onClick[|agregarElementoHabitacion(mainPanel)]
		]
		new Button(botonera) => [
			caption = "Cancelar"
//			onClick[|resetearTextBox ]
		]
	}

	def agregarElementoHabitacion(Panel panel) {
//		if (!modelObject.existeItem && !modelObject.textBox.empty) {
//			modelObject.agregarElementoHabitacion()
//		} else {
//			new Label(panel).text = "El elemento ya existe en la Habitacion"
//		}

	//howInfo("se agrego un elemento")
	}
	
	
	

	def static main(String[] args) {
		new AgregarItem().startApplication
	}

}
