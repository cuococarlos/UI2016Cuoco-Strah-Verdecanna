import appModels.AgregarAccionUsarElementoAppModel
import dominioElementosDeljuego.Habitacion
import dominioElementosDeljuego.Item
import dominioElementosDeljuego.Laberinto
import org.uqbar.arena.bindings.PropertyAdapter
import org.uqbar.arena.widgets.Button
import org.uqbar.arena.widgets.Label
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.widgets.Selector
import org.uqbar.arena.windows.SimpleWindow
import org.uqbar.arena.windows.WindowOwner

import static extension org.uqbar.arena.xtend.ArenaXtendExtensions.*

class AgregarAccionUsarElementoWindow extends SimpleWindow<AgregarAccionUsarElementoAppModel> {

	new(WindowOwner owner, Habitacion hab, Laberinto lab) {
		super(owner, new AgregarAccionUsarElementoAppModel(hab, lab))
		title = "Agregar Accion de Usar un Elemento"
		taskDescription = "Seleccione el Elemento que puede ser usado"
	}

	override protected createFormPanel(Panel mainPanel) {

		//		this.title = "Agregar Accion de Usar un Elemento"
		//		new Label(mainPanel).text = "Seleccione el Elemento que puede ser usado"
		new Selector<Item>(mainPanel) => [
			allowNull(false)
			value <=> "itemActual"
			(items <=> "laberintoActual.todosLosItems").adapter = new PropertyAdapter(Item, "nombre")
		]

		new Label(mainPanel).text = "Cree la Accion a realizar"
		new Button(mainPanel) => [
			caption = "Agregar Accion"
			onClick [|
				modelObject.crearYAgregarAccionDeUsarUnElemento()
				this.close
			]
		]

	}

	override protected addActions(Panel actionsPanel) {
	}

}
