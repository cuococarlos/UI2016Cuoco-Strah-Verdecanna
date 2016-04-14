import dominioElementosDeljuego.BibliotecaDeJuego;
import org.eclipse.xtext.xbase.lib.ObjectExtensions;
import org.eclipse.xtext.xbase.lib.Procedures.Procedure1;
import org.uqbar.arena.bindings.ObservableItems;
import org.uqbar.arena.bindings.ObservableValue;
import org.uqbar.arena.layout.HorizontalLayout;
import org.uqbar.arena.layout.VerticalLayout;
import org.uqbar.arena.widgets.Button;
import org.uqbar.arena.widgets.Control;
import org.uqbar.arena.widgets.List;
import org.uqbar.arena.widgets.Panel;
import org.uqbar.arena.widgets.Selector;
import org.uqbar.arena.windows.SimpleWindow;
import org.uqbar.arena.windows.WindowOwner;
import org.uqbar.arena.xtend.ArenaXtendExtensions;
import org.uqbar.lacar.ui.model.Action;
import org.uqbar.lacar.ui.model.ControlBuilder;
import org.uqbar.lacar.ui.model.ListBuilder;

@SuppressWarnings("all")
public class AdministradorWindow extends SimpleWindow<BibliotecaDeJuegoAppModel> {
  public AdministradorWindow(final WindowOwner parent, final BibliotecaDeJuego model) {
    super(parent, new BibliotecaDeJuegoAppModel(model));
  }
  
  protected void addActions(final Panel actionsPanel) {
  }
  
  protected void createFormPanel(final Panel mainPanel) {
    final Panel todo = new Panel(mainPanel);
    HorizontalLayout _horizontalLayout = new HorizontalLayout();
    todo.setLayout(_horizontalLayout);
    this.laberintos(todo);
    this.habitacionesDelLaberinto(todo);
  }
  
  public List<Object> habitacionesDelLaberinto(final Panel panel) {
    List<Object> _xblockexpression = null;
    {
      Panel panelDeHabitaciones = new Panel(panel);
      VerticalLayout _verticalLayout = new VerticalLayout();
      panelDeHabitaciones.setLayout(_verticalLayout);
      List<Object> _list = new List<Object>(panelDeHabitaciones);
      final Procedure1<List<Object>> _function = new Procedure1<List<Object>>() {
        public void apply(final List<Object> it) {
          ObservableItems<Selector<Object>, Object, ListBuilder<Object>> _items = it.items();
          ArenaXtendExtensions.operator_spaceship(_items, "laberintoSeleccionado.habitaciones");
        }
      };
      _xblockexpression = ObjectExtensions.<List<Object>>operator_doubleArrow(_list, _function);
    }
    return _xblockexpression;
  }
  
  protected Button laberintos(final Panel mainPanel) {
    Button _xblockexpression = null;
    {
      Panel panelLaberintos = new Panel(mainPanel);
      List<Object> _list = new List<Object>(panelLaberintos);
      final Procedure1<List<Object>> _function = new Procedure1<List<Object>>() {
        public void apply(final List<Object> it) {
          ObservableItems<Selector<Object>, Object, ListBuilder<Object>> _items = it.items();
          ArenaXtendExtensions.operator_spaceship(_items, "laberintos");
          ObservableValue<Control, ControlBuilder> _value = it.<ControlBuilder>value();
          ArenaXtendExtensions.operator_spaceship(_value, "laberintoSeleccionado");
        }
      };
      ObjectExtensions.<List<Object>>operator_doubleArrow(_list, _function);
      Panel botonera = new Panel(panelLaberintos);
      HorizontalLayout _horizontalLayout = new HorizontalLayout();
      botonera.setLayout(_horizontalLayout);
      Button _button = new Button(botonera);
      final Procedure1<Button> _function_1 = new Procedure1<Button>() {
        public void apply(final Button it) {
          it.setCaption("Agregar Laberinto");
          final Action _function = new Action() {
            public void execute() {
              BibliotecaDeJuegoAppModel _modelObject = AdministradorWindow.this.getModelObject();
              BibliotecaDeJuego _juego = _modelObject.getJuego();
              AgregarLaberintoWindow _agregarLaberintoWindow = new AgregarLaberintoWindow(AdministradorWindow.this, _juego);
              _agregarLaberintoWindow.open();
            }
          };
          it.onClick(_function);
        }
      };
      _xblockexpression = ObjectExtensions.<Button>operator_doubleArrow(_button, _function_1);
    }
    return _xblockexpression;
  }
}
