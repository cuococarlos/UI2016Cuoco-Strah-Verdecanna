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
		//super(owner, new AgregarHabitacionAppModel(biblioteca))
		super(owner, new AgregarAccionIrAOtraHabitacionAppModel(hab,lab))
		this.title = "Agregar Habitacion"
	}

	override protected createFormPanel(Panel mainPanel) {
		val editorPanel = new Panel(mainPanel)
		editorPanel.layout = new ColumnLayout(2)
		
		new Label(editorPanel).text = "Habitacion"
		new Selector<Habitacion>(editorPanel) => [
			allowNull (false)
//		  hay que ver como funciona el tema de las listas
			value <=> "habitacionDestino"
			(items <=> "laberintoActual.habitaciones").adapter = new PropertyAdapter(Habitacion, "nombreHabitacion")
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