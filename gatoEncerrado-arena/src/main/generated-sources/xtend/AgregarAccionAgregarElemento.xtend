

import org.uqbar.arena.windows.MainWindow
import org.uqbar.arena.widgets.Panel

import org.uqbar.arena.widgets.Label
import org.uqbar.arena.widgets.Selector
import dominioElementosDeljuego.Item
import org.uqbar.arena.widgets.Button
import dominioElementosDeljuego.AccionUsarItem

class AgregarAccionAgregarElemento extends MainWindow<AccionUsarItem>{
	
	new() {
		super(new AccionUsarItem)
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