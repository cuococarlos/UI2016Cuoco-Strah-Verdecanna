import dominioElementosDeljuego.Habitacion;
import dominioElementosDeljuego.Laberinto;
import org.eclipse.xtext.xbase.lib.ObjectExtensions;
import org.eclipse.xtext.xbase.lib.Procedures.Procedure1;
import org.uqbar.arena.layout.ColumnLayout;
import org.uqbar.arena.widgets.Button;
import org.uqbar.arena.widgets.Label;
import org.uqbar.arena.widgets.Panel;
import org.uqbar.arena.widgets.Selector;
import org.uqbar.arena.windows.SimpleWindow;
import org.uqbar.arena.windows.WindowOwner;
import org.uqbar.lacar.ui.model.Action;

@SuppressWarnings("all")
public class AgregarAccionIrAOtraHabitacionWindow /* extends /* SimpleWindow<AgregarAccionIrAOtraHabitacionAppModel> */  */{
  public AgregarAccionIrAOtraHabitacionWindow(final WindowOwner owner, final Habitacion hab, final Laberinto lab) {
    throw new Error("Unresolved compilation problems:"
      + "\nAgregarAccionIrAOtraHabitacionAppModel cannot be resolved.");
  }
  
  protected void createFormPanel(final Panel mainPanel) {
    final Panel editorPanel = new Panel(mainPanel);
    ColumnLayout _columnLayout = new ColumnLayout(2);
    editorPanel.setLayout(_columnLayout);
    Label _label = new Label(editorPanel);
    _label.setText("Habitacion");
    Selector<Object> _selector = new Selector<Object>(editorPanel);
    final Procedure1<Selector<Object>> _function = new Procedure1<Selector<Object>>() {
      public void apply(final Selector<Object> it) {
        it.allowNull(false);
        it.setWidth(100);
      }
    };
    ObjectExtensions.<Selector<Object>>operator_doubleArrow(_selector, _function);
  }
  
  protected void addActions(final Panel actionsPanel) {
    Button _button = new Button(actionsPanel);
    final Procedure1<Button> _function = new Procedure1<Button>() {
      public void apply(final Button it) {
        it.setCaption("Cancelar");
        it.setAsDefault();
        final Action _function = new Action() {
          public void execute() {
            AgregarAccionIrAOtraHabitacionWindow.this.volver();
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
            AgregarAccionIrAOtraHabitacionWindow.this.agregarYVolver();
          }
        };
        it.onClick(_function);
      }
    };
    ObjectExtensions.<Button>operator_doubleArrow(_button_1, _function_1);
  }
  
  public void volver() {
    throw new UnsupportedOperationException("TODO: auto-generated method stub");
  }
  
  public void agregarYVolver() {
    throw new UnsupportedOperationException("TODO: auto-generated method stub");
  }
}
