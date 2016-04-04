import org.uqbar.arena.windows.MainWindow
import dominioElementosDeljuego.Habitacion
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.layout.VerticalLayout
import org.uqbar.arena.layout.HorizontalLayout
import org.uqbar.arena.widgets.Button
import org.uqbar.arena.widgets.TextBox
import org.uqbar.arena.widgets.Label
import org.uqbar.arena.windows.ErrorsPanel

class AgregarItem extends MainWindow<Habitacion> {

	//String textBox = "LOLITA"
	new() {
		super(new Habitacion)
	}

	override createContents(Panel mainPanel) {
		this.title = "Agregar Accion de Agarrar un Elemento"
		new Label(mainPanel).text = "Escriba el elemento que aparecera en la Habitacion"
		new TextBox(mainPanel) => [
			bindValueToProperty("textBox")
			//textBox = value
			width = 100
			
		]

		mainPanel.layout = new VerticalLayout
		val botonera = new Panel(mainPanel)
		botonera.layout = new HorizontalLayout

		new Button(botonera) => [
			caption = "Agregar Elemento"
			onClick[|agregarElementoHabitacion(mainPanel)]
		]
		new Button(botonera).caption = "Cancelar"

	}

	def agregarElementoHabitacion(Panel panel) {
		if(modelObject.existeItem){
			new ErrorsPanel(panel, "Ingrese un valor\n")
		}
		else{
			modelObject.agregarElementoHabitacion()
		}

	//howInfo("se agrego un elemento")
	}

	def static main(String[] args) {
		new AgregarItem().startApplication
	}

}
