import dominioElementosDeljuego.Laberinto;
import org.eclipse.xtext.xbase.lib.ObjectExtensions;
import org.eclipse.xtext.xbase.lib.Procedures.Procedure1;
import org.uqbar.arena.bindings.ObservableValue;
import org.uqbar.arena.layout.HorizontalLayout;
import org.uqbar.arena.widgets.Button;
import org.uqbar.arena.widgets.Control;
import org.uqbar.arena.widgets.Label;
import org.uqbar.arena.widgets.Panel;
import org.uqbar.arena.widgets.TextBox;
import org.uqbar.arena.windows.SimpleWindow;
import org.uqbar.arena.windows.WindowOwner;
import org.uqbar.arena.xtend.ArenaXtendExtensions;
import org.uqbar.lacar.ui.model.Action;
import org.uqbar.lacar.ui.model.ControlBuilder;

@SuppressWarnings("all")
public class AgregarHabitacionWindow extends SimpleWindow<AgregarHabitacionAppModel> {
  public AgregarHabitacionWindow(final WindowOwner owner, final Laberinto laberinto) {
    super(owner, new AgregarHabitacionAppModel(laberinto));
    this.setTitle("Agregar Habitacion");
  }
  
  protected void createFormPanel(final Panel mainPanel) {
    Label _label = new Label(mainPanel);
    _label.setText("Escriba el Nombre de la Habitacion a crear");
    TextBox _textBox = new TextBox(mainPanel);
    final Procedure1<TextBox> _function = new Procedure1<TextBox>() {
      public void apply(final TextBox it) {
        ObservableValue<Control, ControlBuilder> _value = it.<ControlBuilder>value();
        ArenaXtendExtensions.operator_spaceship(_value, "habitacionActual.nombre");
      }
    };
    ObjectExtensions.<TextBox>operator_doubleArrow(_textBox, _function);
    Panel botonera = new Panel(mainPanel);
    HorizontalLayout _horizontalLayout = new HorizontalLayout();
    botonera.setLayout(_horizontalLayout);
    Button _button = new Button(botonera);
    final Procedure1<Button> _function_1 = new Procedure1<Button>() {
      public void apply(final Button it) {
        it.setCaption("Crear Habitacion");
        final Action _function = new Action() {
          public void execute() {
            AgregarHabitacionAppModel _modelObject = AgregarHabitacionWindow.this.getModelObject();
            _modelObject.crearYAgregarHabitacion();
            AgregarHabitacionWindow.this.close();
          }
        };
        it.onClick(_function);
        it.setAsDefault();
        final Action _function_1 = new Action() {
          public void execute() {
            AgregarHabitacionAppModel _modelObject = AgregarHabitacionWindow.this.getModelObject();
            _modelObject.crearYAgregarHabitacion();
          }
        };
        it.onClick(_function_1);
      }
    };
    ObjectExtensions.<Button>operator_doubleArrow(_button, _function_1);
    Button _button_1 = new Button(botonera);
    final Procedure1<Button> _function_2 = new Procedure1<Button>() {
      public void apply(final Button it) {
        it.setCaption("Cancelar");
        final Action _function = new Action() {
          public void execute() {
            AgregarHabitacionWindow.this.close();
          }
        };
        it.onClick(_function);
      }
    };
    ObjectExtensions.<Button>operator_doubleArrow(_button_1, _function_2);
  }
  
  protected void addActions(final Panel actionsPanel) {
  }
}
