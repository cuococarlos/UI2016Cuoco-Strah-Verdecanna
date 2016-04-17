import org.uqbar.arena.windows.SimpleWindow
import org.uqbar.arena.windows.WindowOwner
import org.uqbar.arena.widgets.Panel
import dominioElementosDeljuego.Habitacion
import dominioElementosDeljuego.Laberinto
import org.uqbar.arena.widgets.Label
import org.uqbar.arena.widgets.Selector
import dominioElementosDeljuego.Item
import org.uqbar.arena.widgets.Button
import org.uqbar.arena.bindings.PropertyAdapter
import static extension org.uqbar.arena.xtend.ArenaXtendExtensions.*


class AgregarAccionUsarElementoWindow extends SimpleWindow<AgregarAccionUsarElementoAppModel>{
	
	
	new(WindowOwner owner, Habitacion hab,Laberinto lab) {
		//super(owner, new AgregarHabitacionAppModel(biblioteca))
		super(owner, new AgregarAccionUsarElementoAppModel(hab,lab))
		//this.title = "Agregar Habitacion"
	}
	
	override createContents(Panel mainPanel) {
		this.title = "Agregara Accion de Usar un Elemento"
		
		new Label(mainPanel).text = "Seleccione el Elemento que puede ser usado"
		new Selector<Item>(mainPanel) => [
			allowNull(false)
			(items <=> "laberintoActual.todosLosItems").adapter = new PropertyAdapter(Item,"nombre")
			value <=> "itemActual"
		] 
		
		new Label(mainPanel).text = "Cree la Accion a realizar"
		new Button(mainPanel) => [
			caption = "Agregar Accion"
			onClick [ | modelObject.crearYAgregarAccionDeUsarUnElemento()
						this.close
					]
		]
		
	}
	
	
	override protected addActions(Panel actionsPanel) {
		throw new UnsupportedOperationException("TODO: auto-generated method stub")
	}
	
	override protected createFormPanel(Panel mainPanel) {
		throw new UnsupportedOperationException("TODO: auto-generated method stub")
	}
	

	
}