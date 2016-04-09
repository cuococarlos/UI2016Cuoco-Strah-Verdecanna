import dominioElementosDeljuego.Administrador;
import dominioElementosDeljuego.Laberinto;
import org.eclipse.xtend.lib.annotations.Accessors;
import org.eclipse.xtext.xbase.lib.ObjectExtensions;
import org.eclipse.xtext.xbase.lib.Procedures.Procedure1;
import org.uqbar.arena.layout.HorizontalLayout;
import org.uqbar.arena.widgets.Button;
import org.uqbar.arena.widgets.Label;
import org.uqbar.arena.widgets.Panel;
import org.uqbar.arena.widgets.TextBox;
import org.uqbar.arena.windows.Dialog;
import org.uqbar.arena.windows.WindowOwner;
import org.uqbar.commons.utils.Observable;
import org.uqbar.lacar.ui.model.Action;

@Accessors
@Observable
@SuppressWarnings("all")
public class AgregarLaberintoWindow extends Dialog<Administrador> {
  public AgregarLaberintoWindow(final WindowOwner owner, final Laberinto model) {
    super(owner, new Administrador(model));
  }
  
  protected void createFormPanel(final Panel mainPanel) {
    this.setTitle("Agregar Laberinto");
    Label _label = new Label(mainPanel);
    _label.setText("Escriba el Nombre del Laberinto a crear");
    TextBox _textBox = new TextBox(mainPanel);
    final Procedure1<TextBox> _function = new Procedure1<TextBox>() {
      public void apply(final TextBox it) {
        it.setHeight(20);
        it.setWidth(100);
      }
    };
    ObjectExtensions.<TextBox>operator_doubleArrow(_textBox, _function);
    final Panel botonera = new Panel(mainPanel);
    HorizontalLayout _horizontalLayout = new HorizontalLayout();
    botonera.setLayout(_horizontalLayout);
    Button _button = new Button(botonera);
    final Procedure1<Button> _function_1 = new Procedure1<Button>() {
      public void apply(final Button it) {
        it.setCaption("Crear Laberinto");
        it.setAsDefault();
        final Action _function = new Action() {
          public void execute() {
            Administrador _modelObject = AgregarLaberintoWindow.this.getModelObject();
            _modelObject.crearLaberinto();
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
}
