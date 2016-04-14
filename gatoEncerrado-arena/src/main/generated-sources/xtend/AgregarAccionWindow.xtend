import dominioElementosDeljuego.Accion
import org.uqbar.arena.layout.ColumnLayout
import org.uqbar.arena.widgets.Button
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.windows.SimpleWindow
import org.uqbar.arena.windows.WindowOwner
import dominioElementosDeljuego.Habitacion
import dominioElementosDeljuego.Laberinto

class AgregarAccionWindow extends SimpleWindow<AgregarAccionAppModel>{
	
	
	new(WindowOwner parent, Habitacion hab,Laberinto lab) {
	super(parent,new AgregarAccionAppModel(lab,hab))
		title = "Agregar Acción"
		taskDescription = "Seleccionar una acción a agregar"
	}
	
	
	override createFormPanel(Panel mainPanel) {
		val editorPanel = new Panel(mainPanel)
		editorPanel.layout = new ColumnLayout(3)			
	}



	override protected addActions(Panel actionsPanel) {
			new Button(actionsPanel) => [
				caption = "Agregar acción de ir a otra habitación"
				setAsDefault
				onClick [ | IrAPantallaAgregarAccionIrAOtraHabitacion ]
									
			]


			new Button(actionsPanel) => [
				caption = "Agregar acción de agarrar un elemento"
				setAsDefault
				onClick [ | IrAPantallaAgregarAccionAgarrarUnElemento ]
									
			]


			new Button(actionsPanel) => [
				caption = "Agregar acción de usar un elemento"
				setAsDefault
				onClick [ |   ]
						
			]
					
	}
	
	
	def IrAPantallaAgregarAccionIrAOtraHabitacion() {
		new AgregarAccionIrAOtraHabitacionWindow(this,modelObject.habitacionActual,modelObject.laberintoActual).open
	}
	
	
	def IrAPantallaAgregarAccionAgarrarUnElemento() {
		throw new UnsupportedOperationException("TODO: Ir a la pantalla de agarrar un elemento")
	}


	def IrAPantallaAgregarAccionUsarUnElemento() {
		throw new UnsupportedOperationException("TODO: Ir a la pantalla de usar un elemento")
	}
	
	


	
}