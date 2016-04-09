import dominioElementosDeljuego.AccionUsarItem;
import dominioElementosDeljuego.Item;
import org.eclipse.xtext.xbase.lib.ObjectExtensions;
import org.eclipse.xtext.xbase.lib.Procedures.Procedure1;
import org.uqbar.arena.widgets.Button;
import org.uqbar.arena.widgets.Label;
import org.uqbar.arena.widgets.Panel;
import org.uqbar.arena.widgets.Selector;
import org.uqbar.arena.windows.MainWindow;

@SuppressWarnings("all")
public class AgregarAccionAgregarElemento extends MainWindow<AccionUsarItem> {
  public AgregarAccionAgregarElemento() {
    super(new AccionUsarItem());
  }
  
  public void createContents(final Panel mainPanel) {
    this.setTitle("Agregara Accion de Usar un Elemento");
    Label _label = new Label(mainPanel);
    _label.setText("Seleccione el Elemento que puede ser usado");
    Selector<Item> _selector = new Selector<Item>(mainPanel);
    final Procedure1<Selector<Item>> _function = new Procedure1<Selector<Item>>() {
      public void apply(final Selector<Item> it) {
        it.allowNull(false);
      }
    };
    ObjectExtensions.<Selector<Item>>operator_doubleArrow(_selector, _function);
    Label _label_1 = new Label(mainPanel);
    _label_1.setText("Cree la Accion a realizar");
    Button _button = new Button(mainPanel);
    final Procedure1<Button> _function_1 = new Procedure1<Button>() {
      public void apply(final Button it) {
        it.setCaption("Agregar Accion");
      }
    };
    ObjectExtensions.<Button>operator_doubleArrow(_button, _function_1);
  }
  
  public static void main(final String[] args) {
    AgregarAccionAgregarElemento _agregarAccionAgregarElemento = new AgregarAccionAgregarElemento();
    _agregarAccionAgregarElemento.startApplication();
  }
}
