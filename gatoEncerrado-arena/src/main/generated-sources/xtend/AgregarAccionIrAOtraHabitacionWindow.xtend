import dominioElementosDeljuego.Laberinto
import org.uqbar.arena.layout.ColumnLayout
import org.uqbar.arena.widgets.Button
import org.uqbar.arena.widgets.Label
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.widgets.Selector
import org.uqbar.arena.windows.SimpleWindow
import org.uqbar.arena.windows.WindowOwner
import dominioElementosDeljuego.Habitacion
import static extension org.uqbar.arena.xtend.ArenaXtendExtensions.*
import org.uqbar.arena.bindings.PropertyAdapter

class AgregarAccionIrAOtraHabitacionWindow extends SimpleWindow<AgregarAccionIrAOtraHabitacionAppModel>{
	
	new(WindowOwner owner, Habitacion hab,Laberinto lab) {
		super(owner, new AgregarAccionIrAOtraHabitacionAppModel(hab,lab))
		title = "Agregar Accion de ir a otra habitacion"
		taskDescription = "Seleccionar una habitacion a la cual ir"
	}

	override protected createFormPanel(Panel mainPanel) {
		
		val editorPanel = new Panel(mainPanel)
		editorPanel.layout = new ColumnLayout(2)
		editorPanel.width = 800
		
		new Label(editorPanel).text = "Habitacion"
		new Selector<Habitacion>(editorPanel) => [
			allowNull (false)
			value <=> "habitacionDestino"
			(items <=> "laberintoActual.habitaciones").adapter = new PropertyAdapter(Habitacion, "nombreHabitacion")
			width = 100
			height = 90
		]
					
	}
	

	override protected addActions(Panel actionsPanel) {
						
			new Button(actionsPanel) => [
				caption = "Cancelar"
				setAsDefault
				onClick [ |this.close  ]									
			]


			new Button(actionsPanel) => [
				caption = "Agregar"
				setAsDefault
				onClick [ | modelObject.crearYAgregarAccionDeIrOtraHabitacion()
							this.close
				]									
			]

	}
	
	
	
	
	


}