import dominioElementosDeljuego.Habitacion;
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
      }
    };
    ObjectExtensions.<Button>operator_doubleArrow(_button_1, _function_2);
  }
  
  public Object agregarElementoHabitacion(final Panel panel) {
    return null;
  }
  
  public static void main(final String[] args) {
    AgregarItem _agregarItem = new AgregarItem();
    _agregarItem.startApplication();
  }
}
