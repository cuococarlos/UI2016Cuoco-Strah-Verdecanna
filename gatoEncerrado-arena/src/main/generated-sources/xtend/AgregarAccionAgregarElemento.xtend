

import org.uqbar.arena.windows.MainWindow
import org.uqbar.arena.widgets.Panel
import dominioElementosDeljuego.AccionUsarElemento
import org.uqbar.arena.widgets.Label
import org.uqbar.arena.widgets.Selector
import dominioElementosDeljuego.Item
import org.uqbar.arena.widgets.Button

class AgregarAccionAgregarElemento extends MainWindow<AccionUsarElemento>{
	
	new() {
		super(new AccionUsarElemento)
	}
	
	override createContents(Panel mainPanel) {
		this.title = "Agregara Accion de Usar un Elemento"
		
		new Label(mainPanel).text = "Seleccione el Elemento que puede ser usado"
		new Selector<Item>(mainPanel) => [
			allowNull(false)
			
		] 
		
		new Label(mainPanel).text = "Cree la Accion a realizar"
		new Button(mainPanel) => [
			caption = "Agregar Accion"
		]
	}
	
	def static main(String[] args) {
		new AgregarAccionAgregarElemento().startApplication
	}
	
}