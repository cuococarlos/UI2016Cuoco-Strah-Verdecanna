import dominioElementosDeljuego.Administrador
import org.uqbar.arena.layout.HorizontalLayout
import org.uqbar.arena.widgets.Button
import org.uqbar.arena.widgets.List
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.windows.SimpleWindow
import org.uqbar.arena.windows.WindowOwner

class AdministradorWindow extends SimpleWindow<Administrador> {

	new(WindowOwner parent, Administrador model) {
		super(parent, model)
	}

	override protected addActions(Panel actionsPanel) {
		throw new UnsupportedOperationException("TODO: auto-generated method stub")
	}

	override protected createFormPanel(Panel mainPanel) {
		throw new UnsupportedOperationException("TODO: auto-generated method stub")
	}

	override createMainTemplate(Panel mainPanel) {
		this.title = "Seguidor de carrera"
		var panelLaberintos = new Panel(mainPanel)

		new List(panelLaberintos) => [
			//(items <=> "carrera.materias").adapter = new PropertyAdapter(Materia, "nombreMateria")
			//items => "model.biblioteca"
		]

		var botonera = new Panel(panelLaberintos)
		botonera.layout = new HorizontalLayout
		new Button(botonera) => [
			caption = "Agregar Laberinto"
			//onClick[|agregarLaberinto]
		]
		new Button(botonera) => [
			caption = "Cancelar"
			//onClick[|resetearTextBox ]
		]

	}


}
