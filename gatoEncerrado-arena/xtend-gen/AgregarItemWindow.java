import dominioElementosDeljuego.Item;
import org.eclipse.xtend.lib.annotations.Accessors;
import org.eclipse.xtext.xbase.lib.ObjectExtensions;
import org.eclipse.xtext.xbase.lib.Procedures.Procedure1;
import org.eclipse.xtext.xbase.lib.Pure;
import org.uqbar.arena.layout.HorizontalLayout;
import org.uqbar.arena.layout.VerticalLayout;
import org.uqbar.arena.widgets.Button;
import org.uqbar.arena.widgets.Label;
import org.uqbar.arena.widgets.Panel;
import org.uqbar.arena.widgets.TextBox;
import org.uqbar.arena.windows.MainWindow;
import org.uqbar.commons.utils.Observable;
import org.uqbar.lacar.ui.model.Action;
import org.uqbar.lacar.ui.model.ControlBuilder;

@Accessors
@Observable
@SuppressWarnings("all")
public class AgregarItemWindow extends MainWindow<Item> {
  private String textBox;
  
  public AgregarItemWindow() {
    super(new Item());
  }
  
  public void createContents(final Panel mainPanel) {
    this.setTitle("Agregar Accion de Agarrar un Elemento");
    Label _label = new Label(mainPanel);
    _label.setText("Escriba el elemento que aparecera en la Habitacion");
    TextBox _textBox = new TextBox(mainPanel);
    final Procedure1<TextBox> _function = new Procedure1<TextBox>() {
      public void apply(final TextBox it) {
        it.<Object, ControlBuilder>bindValueToProperty("textBox");
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
        final Action _function = new Action() {
          public void execute() {
            AgregarItemWindow.this.agregarElementoHabitacion(AgregarItemWindow.this.textBox);
          }
        };
        it.onClick(_function);
      }
    };
    ObjectExtensions.<Button>operator_doubleArrow(_button, _function_1);
    Button _button_1 = new Button(botonera);
    _button_1.setCaption("Cancelar");
  }
  
  public Object agregarElementoHabitacion(final String item) {
    return null;
  }
  
  public static void main(final String[] args) {
    AgregarItemWindow _agregarItemWindow = new AgregarItemWindow();
    _agregarItemWindow.startApplication();
  }
  
  @Pure
  public String getTextBox() {
    return this.textBox;
  }
  
  public void setTextBox(final String textBox) {
    this.textBox = textBox;
  }
}
