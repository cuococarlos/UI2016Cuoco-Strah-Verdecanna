import dominioElementosDeljuego.Habitacion;
import dominioElementosDeljuego.Laberinto;
import org.eclipse.xtext.xbase.lib.ObjectExtensions;
import org.eclipse.xtext.xbase.lib.Procedures.Procedure1;
import org.uqbar.arena.bindings.ObservableItems;
import org.uqbar.arena.bindings.ObservableValue;
import org.uqbar.arena.bindings.PropertyAdapter;
import org.uqbar.arena.layout.ColumnLayout;
import org.uqbar.arena.widgets.Button;
import org.uqbar.arena.widgets.Control;
import org.uqbar.arena.widgets.Label;
import org.uqbar.arena.widgets.Panel;
import org.uqbar.arena.widgets.Selector;
import org.uqbar.arena.windows.SimpleWindow;
import org.uqbar.arena.windows.WindowOwner;
import org.uqbar.arena.xtend.ArenaXtendExtensions;
import org.uqbar.lacar.ui.model.Action;
import org.uqbar.lacar.ui.model.ControlBuilder;
import org.uqbar.lacar.ui.model.ListBuilder;
import org.uqbar.lacar.ui.model.bindings.Binding;

@SuppressWarnings("all")
public class AgregarAccionIrAOtraHabitacionWindow extends SimpleWindow<AgregarAccionIrAOtraHabitacionAppModel> {
  public AgregarAccionIrAOtraHabitacionWindow(final WindowOwner owner, final Habitacion hab, final Laberinto lab) {
    super(owner, new AgregarAccionIrAOtraHabitacionAppModel(hab, lab));
    this.setTitle("Agregar Habitacion");
  }
  
  protected void createFormPanel(final Panel mainPanel) {
    final Panel editorPanel = new Panel(mainPanel);
    ColumnLayout _columnLayout = new ColumnLayout(2);
    editorPanel.setLayout(_columnLayout);
    Label _label = new Label(editorPanel);
    _label.setText("Habitacion");
    Selector<Habitacion> _selector = new Selector<Habitacion>(editorPanel);
    final Procedure1<Selector<Habitacion>> _function = new Procedure1<Selector<Habitacion>>() {
      public void apply(final Selector<Habitacion> it) {
        it.allowNull(false);
        ObservableValue<Control, ControlBuilder> _value = it.<ControlBuilder>value();
        ArenaXtendExtensions.operator_spaceship(_value, "habitacionDestino");
        ObservableItems<Selector<Habitacion>, Habitacion, ListBuilder<Habitacion>> _items = it.items();
        Binding _spaceship = ArenaXtendExtensions.operator_spaceship(_items, "laberintoActual.habitaciones");
        PropertyAdapter _propertyAdapter = new PropertyAdapter(Habitacion.class, "nombreHabitacion");
        _spaceship.setAdapter(_propertyAdapter);
      }
    };
    ObjectExtensions.<Selector<Habitacion>>operator_doubleArrow(_selector, _function);
  }
  
  protected void addActions(final Panel actionsPanel) {
    Button _button = new Button(actionsPanel);
    final Procedure1<Button> _function = new Procedure1<Button>() {
      public void apply(final Button it) {
        it.setCaption("Cancelar");
        it.setAsDefault();
        final Action _function = new Action() {
          public void execute() {
            AgregarAccionIrAOtraHabitacionWindow.this.close();
          }
        };
        it.onClick(_function);
      }
    };
    ObjectExtensions.<Button>operator_doubleArrow(_button, _function);
    Button _button_1 = new Button(actionsPanel);
    final Procedure1<Button> _function_1 = new Procedure1<Button>() {
      public void apply(final Button it) {
        it.setCaption("Agregar");
        it.setAsDefault();
        final Action _function = new Action() {
          public void execute() {
            AgregarAccionIrAOtraHabitacionAppModel _modelObject = AgregarAccionIrAOtraHabitacionWindow.this.getModelObject();
            _modelObject.crearYAgregarAccionDeIrOtraHabitacion();
            AgregarAccionIrAOtraHabitacionWindow.this.close();
          }
        };
        it.onClick(_function);
      }
    };
    ObjectExtensions.<Button>operator_doubleArrow(_button_1, _function_1);
  }
}
