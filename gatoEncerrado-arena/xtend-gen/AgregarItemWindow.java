import dominioElementosDeljuego.Item;
import org.eclipse.xtext.xbase.lib.ObjectExtensions;
import org.eclipse.xtext.xbase.lib.Procedures.Procedure1;
import org.uqbar.arena.layout.VerticalLayout;
import org.uqbar.arena.widgets.Button;
import org.uqbar.arena.widgets.Label;
import org.uqbar.arena.widgets.Panel;
import org.uqbar.arena.widgets.TextBox;
import org.uqbar.arena.windows.MainWindow;

@SuppressWarnings("all")
public class AgregarItemWindow extends MainWindow<Item> {
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
        it.setWidth(100);
      }
    };
    ObjectExtensions.<TextBox>operator_doubleArrow(_textBox, _function);
    VerticalLayout _verticalLayout = new VerticalLayout();
    mainPanel.setLayout(_verticalLayout);
    Button _button = new Button(mainPanel);
    _button.setCaption("Aceptar");
    Button _button_1 = new Button(mainPanel);
    _button_1.setCaption("Cancelar");
  }
  
  public static void main(final String[] args) {
    AgregarItemWindow _agregarItemWindow = new AgregarItemWindow();
    _agregarItemWindow.startApplication();
  }
}
