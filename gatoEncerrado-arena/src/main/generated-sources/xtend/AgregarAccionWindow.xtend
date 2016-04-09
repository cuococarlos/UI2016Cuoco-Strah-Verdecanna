import dominioElementosDeljuego.Accion
import org.uqbar.arena.layout.ColumnLayout
import org.uqbar.arena.widgets.Button
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.windows.SimpleWindow
import org.uqbar.arena.windows.WindowOwner

class AgregarAccionWindow extends SimpleWindow<Accion>{
	
	
	
	new(WindowOwner parent, Accion accion) {
		super(parent, accion)
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
				onClick [ | IrAPantallaAgregarAccionUsarUnElemento ]
						
			]
					
	}
	
	
	def IrAPantallaAgregarAccionIrAOtraHabitacion() {
		throw new UnsupportedOperationException("TODO: Ir a la pantalla de ir a otra habitación")
	}
	
	
	def IrAPantallaAgregarAccionAgarrarUnElemento() {
		throw new UnsupportedOperationException("TODO: Ir a la pantalla de agarrar un elemento")
	}


	def IrAPantallaAgregarAccionUsarUnElemento() {
		throw new UnsupportedOperationException("TODO: Ir a la pantalla de usar un elemento")
	}
	
	


	
}