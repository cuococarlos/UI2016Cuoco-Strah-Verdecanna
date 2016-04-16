import com.google.common.base.Objects;
import commons.GatoEncerradoCommons;
import dominioElementosDeljuego.BibliotecaDeJuego;
import dominioElementosDeljuego.Habitacion;
import dominioElementosDeljuego.Laberinto;
import gatoEncerradoExceptions.AgregarAccionException;
import gatoEncerradoExceptions.AgregarHabitacionException;
import org.eclipse.xtext.xbase.lib.ObjectExtensions;
import org.eclipse.xtext.xbase.lib.Procedures.Procedure1;
import org.uqbar.arena.bindings.ObservableItems;
import org.uqbar.arena.bindings.ObservableValue;
import org.uqbar.arena.bindings.PropertyAdapter;
import org.uqbar.arena.layout.HorizontalLayout;
import org.uqbar.arena.layout.VerticalLayout;
import org.uqbar.arena.widgets.Button;
import org.uqbar.arena.widgets.CheckBox;
import org.uqbar.arena.widgets.Control;
import org.uqbar.arena.widgets.Label;
import org.uqbar.arena.widgets.List;
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
public class AdministradorWindow extends SimpleWindow<BibliotecaDeJuegoAppModel> {
  public AdministradorWindow(final WindowOwner parent, final BibliotecaDeJuego model) {
    super(parent, new BibliotecaDeJuegoAppModel(model));
  }
  
  protected void addActions(final Panel actionsPanel) {
  }
  
  protected void createFormPanel(final Panel mainPanel) {
    this.setTitle("Aca Hay Gato Encerrado...");
    final Panel todo = new Panel(mainPanel);
    HorizontalLayout _horizontalLayout = new HorizontalLayout();
    todo.setLayout(_horizontalLayout);
    this.laberintos(todo);
    this.habitacionesDelLaberinto(todo);
    this.acciones(todo);
  }
  
  public Button habitacionesDelLaberinto(final Panel panel) {
    Button _xblockexpression = null;
    {
      Panel panelDeHabitaciones = new Panel(panel);
      VerticalLayout _verticalLayout = new VerticalLayout();
      panelDeHabitaciones.setLayout(_verticalLayout);
      panelDeHabitaciones.setWidth(100);
      Label _label = new Label(panelDeHabitaciones);
      _label.setText("Habitaciones de:  ");
      List<Object> _list = new List<Object>(panelDeHabitaciones);
      final Procedure1<List<Object>> _function = new Procedure1<List<Object>>() {
        public void apply(final List<Object> it) {
          ObservableItems<Selector<Object>, Object, ListBuilder<Object>> _items = it.items();
          Binding _spaceship = ArenaXtendExtensions.operator_spaceship(_items, "laberintoSeleccionado.habitacionesQueLaComponen");
          PropertyAdapter _propertyAdapter = new PropertyAdapter(Habitacion.class, "nombreHabitacion");
          _spaceship.setAdapter(_propertyAdapter);
          ObservableValue<Control, ControlBuilder> _value = it.<ControlBuilder>value();
          ArenaXtendExtensions.operator_spaceship(_value, "habitacionSeleccionada");
        }
      };
      ObjectExtensions.<List<Object>>operator_doubleArrow(_list, _function);
      Panel botoneraAddLaberintos = new Panel(panelDeHabitaciones);
      HorizontalLayout _horizontalLayout = new HorizontalLayout();
      botoneraAddLaberintos.setLayout(_horizontalLayout);
      Button _button = new Button(botoneraAddLaberintos);
      final Procedure1<Button> _function_1 = new Procedure1<Button>() {
        public void apply(final Button it) {
          it.setCaption("Agregar Habitacion");
          final Action _function = new Action() {
            public void execute() {
              AdministradorWindow.this.IrAPantallaAgregarHabitacion();
            }
          };
          it.onClick(_function);
        }
      };
      ObjectExtensions.<Button>operator_doubleArrow(_button, _function_1);
      Button _button_1 = new Button(botoneraAddLaberintos);
      final Procedure1<Button> _function_2 = new Procedure1<Button>() {
        public void apply(final Button it) {
          it.setCaption("Quitar Habitacion");
          final Action _function = new Action() {
            public void execute() {
              BibliotecaDeJuegoAppModel _modelObject = AdministradorWindow.this.getModelObject();
              _modelObject.quitarHabitacion();
            }
          };
          it.onClick(_function);
        }
      };
      _xblockexpression = ObjectExtensions.<Button>operator_doubleArrow(_button_1, _function_2);
    }
    return _xblockexpression;
  }
  
  public Button laberintos(final Panel mainPanel) {
    Button _xblockexpression = null;
    {
      Panel panelLaberintos = new Panel(mainPanel);
      Label _label = new Label(panelLaberintos);
      _label.setText("Laberintos");
      List<Object> _list = new List<Object>(panelLaberintos);
      final Procedure1<List<Object>> _function = new Procedure1<List<Object>>() {
        public void apply(final List<Object> it) {
          ObservableItems<Selector<Object>, Object, ListBuilder<Object>> _items = it.items();
          Binding _spaceship = ArenaXtendExtensions.operator_spaceship(_items, "juego.laberintos");
          PropertyAdapter _propertyAdapter = new PropertyAdapter(Laberinto.class, "nombreLaberinto");
          _spaceship.setAdapter(_propertyAdapter);
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
              AdministradorWindow.this.IrAPantallaAgregarLaberinto();
            }
          };
          it.onClick(_function);
        }
      };
      ObjectExtensions.<Button>operator_doubleArrow(_button, _function_1);
      Button _button_1 = new Button(botonera);
      final Procedure1<Button> _function_2 = new Procedure1<Button>() {
        public void apply(final Button it) {
          it.setCaption("Quitar Laberinto");
          final Action _function = new Action() {
            public void execute() {
              BibliotecaDeJuegoAppModel _modelObject = AdministradorWindow.this.getModelObject();
              _modelObject.quitarLaberinto();
            }
          };
          it.onClick(_function);
        }
      };
      _xblockexpression = ObjectExtensions.<Button>operator_doubleArrow(_button_1, _function_2);
    }
    return _xblockexpression;
  }
  
  public Button acciones(final Panel mainPanel) {
    Button _xblockexpression = null;
    {
      Panel panelAcciones = new Panel(mainPanel);
      VerticalLayout _verticalLayout = new VerticalLayout();
      panelAcciones.setLayout(_verticalLayout);
      Label _label = new Label(panelAcciones);
      _label.setText("Habitacion Seleccionada");
      Panel panelEsEstadoInicialHabitacion = new Panel(panelAcciones);
      HorizontalLayout _horizontalLayout = new HorizontalLayout();
      panelEsEstadoInicialHabitacion.setLayout(_horizontalLayout);
      Label _label_1 = new Label(panelEsEstadoInicialHabitacion);
      _label_1.setText("Es Habitacion Inicial?");
      CheckBox _checkBox = new CheckBox(panelEsEstadoInicialHabitacion);
      final Procedure1<CheckBox> _function = new Procedure1<CheckBox>() {
        public void apply(final CheckBox it) {
          ObservableValue<Control, ControlBuilder> _value = it.<ControlBuilder>value();
          ArenaXtendExtensions.operator_spaceship(_value, "habitacionSeleccionada.isHabitacionInicial");
        }
      };
      ObjectExtensions.<CheckBox>operator_doubleArrow(_checkBox, _function);
      Panel panelEsEstadoFinalHabitacion = new Panel(panelAcciones);
      HorizontalLayout _horizontalLayout_1 = new HorizontalLayout();
      panelEsEstadoFinalHabitacion.setLayout(_horizontalLayout_1);
      Label _label_2 = new Label(panelEsEstadoFinalHabitacion);
      _label_2.setText("Es Habitacion Final?");
      CheckBox _checkBox_1 = new CheckBox(panelEsEstadoFinalHabitacion);
      final Procedure1<CheckBox> _function_1 = new Procedure1<CheckBox>() {
        public void apply(final CheckBox it) {
          ObservableValue<Control, ControlBuilder> _value = it.<ControlBuilder>value();
          ArenaXtendExtensions.operator_spaceship(_value, "habitacionSeleccionada.isHabitacionFinal");
        }
      };
      ObjectExtensions.<CheckBox>operator_doubleArrow(_checkBox_1, _function_1);
      Panel panelListadoAccionesHabitacion = new Panel(panelAcciones);
      Label _label_3 = new Label(panelListadoAccionesHabitacion);
      _label_3.setText("Acciones");
      List<Object> _list = new List<Object>(panelListadoAccionesHabitacion);
      final Procedure1<List<Object>> _function_2 = new Procedure1<List<Object>>() {
        public void apply(final List<Object> it) {
          ObservableItems<Selector<Object>, Object, ListBuilder<Object>> _items = it.items();
          ArenaXtendExtensions.operator_spaceship(_items, "habitacionSeleccionada.acciones");
        }
      };
      ObjectExtensions.<List<Object>>operator_doubleArrow(_list, _function_2);
      Panel botoneraAcciones = new Panel(panelAcciones);
      HorizontalLayout _horizontalLayout_2 = new HorizontalLayout();
      botoneraAcciones.setLayout(_horizontalLayout_2);
      Button _button = new Button(botoneraAcciones);
      final Procedure1<Button> _function_3 = new Procedure1<Button>() {
        public void apply(final Button it) {
          it.setCaption("Agregar Accion");
          final Action _function = new Action() {
            public void execute() {
              AdministradorWindow.this.IrAPantallaAgregarAccion();
            }
          };
          it.onClick(_function);
        }
      };
      ObjectExtensions.<Button>operator_doubleArrow(_button, _function_3);
      Button _button_1 = new Button(botoneraAcciones);
      final Procedure1<Button> _function_4 = new Procedure1<Button>() {
        public void apply(final Button it) {
          it.setCaption("Quitar Accion");
        }
      };
      _xblockexpression = ObjectExtensions.<Button>operator_doubleArrow(_button_1, _function_4);
    }
    return _xblockexpression;
  }
  
  public void IrAPantallaAgregarAccion() {
    BibliotecaDeJuegoAppModel _modelObject = this.getModelObject();
    Habitacion _habitacionSeleccionada = _modelObject.getHabitacionSeleccionada();
    boolean _equals = Objects.equal(_habitacionSeleccionada, null);
    if (_equals) {
      throw new AgregarAccionException(GatoEncerradoCommons.AGREGAR_ACCION_EXCEPTION);
    }
    BibliotecaDeJuegoAppModel _modelObject_1 = this.getModelObject();
    Habitacion _habitacionSeleccionada_1 = _modelObject_1.getHabitacionSeleccionada();
    BibliotecaDeJuegoAppModel _modelObject_2 = this.getModelObject();
    Laberinto _laberintoSeleccionado = _modelObject_2.getLaberintoSeleccionado();
    AgregarAccionWindow _agregarAccionWindow = new AgregarAccionWindow(this, _habitacionSeleccionada_1, _laberintoSeleccionado);
    _agregarAccionWindow.open();
  }
  
  public void IrAPantallaAgregarHabitacion() {
    BibliotecaDeJuegoAppModel _modelObject = this.getModelObject();
    Laberinto _laberintoSeleccionado = _modelObject.getLaberintoSeleccionado();
    boolean _equals = Objects.equal(_laberintoSeleccionado, null);
    if (_equals) {
      throw new AgregarHabitacionException(GatoEncerradoCommons.AGREGAR_HABITACION_EXCEPTION);
    }
    BibliotecaDeJuegoAppModel _modelObject_1 = this.getModelObject();
    Laberinto _laberintoSeleccionado_1 = _modelObject_1.getLaberintoSeleccionado();
    AgregarHabitacionWindow _agregarHabitacionWindow = new AgregarHabitacionWindow(this, _laberintoSeleccionado_1);
    _agregarHabitacionWindow.open();
  }
  
  public void IrAPantallaAgregarLaberinto() {
    BibliotecaDeJuegoAppModel _modelObject = this.getModelObject();
    BibliotecaDeJuego _juego = _modelObject.getJuego();
    AgregarLaberintoWindow _agregarLaberintoWindow = new AgregarLaberintoWindow(this, _juego);
    _agregarLaberintoWindow.open();
  }
  
  public String getNombreLaberintoSeleccionado() {
    BibliotecaDeJuegoAppModel _modelObject = this.getModelObject();
    Laberinto _laberintoSeleccionado = _modelObject.getLaberintoSeleccionado();
    return _laberintoSeleccionado.getNombreLaberinto();
  }
}
