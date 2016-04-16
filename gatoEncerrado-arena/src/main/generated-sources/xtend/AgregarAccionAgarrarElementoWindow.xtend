import dominioElementosDeljuego.Habitacion
import dominioElementosDeljuego.Laberinto
import org.uqbar.arena.widgets.Label
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.widgets.TextBox
import org.uqbar.arena.windows.SimpleWindow
import org.uqbar.arena.windows.WindowOwner
import org.uqbar.arena.layout.HorizontalLayout
import org.uqbar.arena.widgets.Button
import static extension org.uqbar.arena.xtend.ArenaXtendExtensions.*


class AgregarAccionAgarrarElementoWindow extends SimpleWindow<AgregarAccionAgarrarElementoAppModel>{
	
	new(WindowOwner owner, Habitacion hab,Laberinto lab) {
		//super(owner, new AgregarHabitacionAppModel(biblioteca))
		super(owner, new AgregarAccionAgarrarElementoAppModel(hab,lab))
		this.title = "Agregar Accion agarrar elemento"
	}


	override protected createFormPanel(Panel mainPanel) {
		this.title = "Agregara Accion de Agarrar un Elemento"		
		new Label(mainPanel).text = "Escriba el Elemento que aparecerá en la habitación"
		new TextBox(mainPanel) => [
			value <=> "itemParaAgregar.nombre"
		]
		var botonera = new Panel(mainPanel)
		botonera.layout = new HorizontalLayout
		new Button(botonera) => [
			caption = "Agregar"
			onClick [|
				modelObject.crearYAgregarAccionDeAgarrarElemento
				this.close
			]
	//		setAsDefault()
	//		onClick [|modelObject.crearYAgregarHabitacion]
		]

		new Button(botonera) => [
			caption = "Cancelar"
			onClick[this.close]
		]
	}
	
	
	override protected addActions(Panel actionsPanel) {
	}
	
	
//	def static main(String[] args) {
//		new AgregarAccionAgregarElemento().startApplication
//	}
	
}