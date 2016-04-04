import dominioElementosDeljuego.Habitacion;
import java.io.Serializable;
import org.eclipse.xtext.xbase.lib.ObjectExtensions;
import org.eclipse.xtext.xbase.lib.Procedures.Procedure1;
import org.uqbar.arena.layout.HorizontalLayout;
import org.uqbar.arena.layout.VerticalLayout;
import org.uqbar.arena.widgets.Button;
import org.uqbar.arena.widgets.Label;
import org.uqbar.arena.widgets.Panel;
import org.uqbar.arena.widgets.TextBox;
import org.uqbar.arena.windows.MainWindow;
import org.uqbar.lacar.ui.model.Action;
import org.uqbar.lacar.ui.model.ControlBuilder;

@SuppressWarnings("all")
public class AgregarItem extends MainWindow<Habitacion> {
  public AgregarItem() {
    super(new Habitacion());
  }
  
  public void createContents(final Panel mainPanel) {
    this.setTitle("Agregar Accion de Agarrar un Elemento");
    Label _label = new Label(mainPanel);
    _label.setText("Escriba el elemento que aparecera en la Habitacion");
    TextBox _textBox = new TextBox(mainPanel);
    final Procedure1<TextBox> _function = new Procedure1<TextBox>() {
      public void apply(final TextBox it) {
        it.<Object, ControlBuilder>bindValueToProperty("textBox");
        it.setHeight(20);
        it.setWidth(100);
      }
    };
    ObjectExtensions.<TextBox>operator_doubleArrow(_textBox, _function);
    VerticalLayout _verticalLayout = new VerticalLayout();
    mainPanel.setLayout(_verticalLayout);
    final Panel botonera = new Panel(mainPanel);
    HorizontalLayout _horizontalLayout = new HorizontalLayout();
    botonera.setLayout(_horizontalLayout);
    Button _button = new Button(botonera);
    final Procedure1<Button> _function_1 = new Procedure1<Button>() {
      public void apply(final Button it) {
        it.setCaption("Agregar Elemento");
        it.setAsDefault();
        final Action _function = new Action() {
          public void execute() {
            AgregarItem.this.agregarElementoHabitacion(mainPanel);
          }
        };
        it.onClick(_function);
      }
    };
    ObjectExtensions.<Button>operator_doubleArrow(_button, _function_1);
    Button _button_1 = new Button(botonera);
    final Procedure1<Button> _function_2 = new Procedure1<Button>() {
      public void apply(final Button it) {
        it.setCaption("Cancelar");
        final Action _function = new Action() {
          public void execute() {
            AgregarItem.this.resetearTextBox();
          }
        };
        it.onClick(_function);
      }
    };
    ObjectExtensions.<Button>operator_doubleArrow(_button_1, _function_2);
  }
  
  public Serializable agregarElementoHabitacion(final Panel panel) {
    Serializable _xifexpression = null;
    boolean _and = false;
    Habitacion _modelObject = this.getModelObject();
    boolean _existeItem = _modelObject.existeItem();
    boolean _not = (!_existeItem);
    if (!_not) {
      _and = false;
    } else {
      Habitacion _modelObject_1 = this.getModelObject();
      String _textBox = _modelObject_1.getTextBox();
      boolean _isEmpty = _textBox.isEmpty();
      boolean _not_1 = (!_isEmpty);
      _and = _not_1;
    }
    if (_and) {
      Habitacion _modelObject_2 = this.getModelObject();
      _xifexpression = _modelObject_2.agregarElementoHabitacion();
    } else {
      Label _label = new Label(panel);
      _xifexpression = _label.setText("El elemento ya existe en la Habitacion");
    }
    return _xifexpression;
  }
  
  public void resetearTextBox() {
    Habitacion _modelObject = this.getModelObject();
    _modelObject.setTextBox("");
  }
  
  public static void main(final String[] args) {
    AgregarItem _agregarItem = new AgregarItem();
    _agregarItem.startApplication();
  }
}
