import dominioElementosDeljuego.Laberinto
import org.uqbar.arena.layout.ColumnLayout
import org.uqbar.arena.widgets.Button
import org.uqbar.arena.widgets.Label
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.widgets.Selector
import org.uqbar.arena.windows.SimpleWindow
import org.uqbar.arena.windows.WindowOwner
import GatoEncerradoApplication
import dominioElementosDeljuego.Habitacion

class AgregarAccionIrAOtraHabitacionWindow extends SimpleWindow<AgregarAccionIrAOtraHabitacionAppModel>{
	
	new(WindowOwner owner, Habitacion hab,Laberinto lab) {
		//super(owner, new AgregarHabitacionAppModel(biblioteca))
		super(owner, new AgregarAccionIrAOtraHabitacionAppModel(hab,lab))
		this.title = "Agregar Habitacion"
	}

	override protected createFormPanel(Panel mainPanel) {
		val editorPanel = new Panel(mainPanel)
		editorPanel.layout = new ColumnLayout(2)
		
		new Label(editorPanel).text = "Habitacion"
		new Selector(editorPanel) => [
			allowNull = false
			width = 100
		//  hay que ver como funciona el tema de las listas
		//	items => "habitacionesQueLaComponen.habitaciones"
		//	value => "habitacionALaCualIr"
		]
				
	}
	

	override protected addActions(Panel actionsPanel) {
						
		
			new Button(actionsPanel) => [
				caption = "Cancelar"
				setAsDefault
				onClick [ | volver ]									
			]


			new Button(actionsPanel) => [
				caption = "Agregar"
				setAsDefault
				onClick [ | agregarYVolver ]									
			]

	}
	
	
	
	def volver() {
		throw new UnsupportedOperationException("TODO: auto-generated method stub")
	}
	
	def agregarYVolver() {
		throw new UnsupportedOperationException("TODO: auto-generated method stub")
	}
	
	


}