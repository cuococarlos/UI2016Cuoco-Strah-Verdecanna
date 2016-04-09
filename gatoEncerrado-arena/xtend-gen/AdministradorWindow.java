import dominioElementosDeljuego.Administrador;
import org.eclipse.xtext.xbase.lib.ObjectExtensions;
import org.eclipse.xtext.xbase.lib.Procedures.Procedure1;
import org.uqbar.arena.layout.HorizontalLayout;
import org.uqbar.arena.widgets.Button;
import org.uqbar.arena.widgets.List;
import org.uqbar.arena.widgets.Panel;
import org.uqbar.arena.windows.SimpleWindow;
import org.uqbar.arena.windows.WindowOwner;

@SuppressWarnings("all")
public class AdministradorWindow extends SimpleWindow<Administrador> {
  public AdministradorWindow(final WindowOwner parent, final Administrador model) {
    super(parent, model);
  }
  
  protected void addActions(final Panel actionsPanel) {
    throw new UnsupportedOperationException("TODO: auto-generated method stub");
  }
  
  protected void createFormPanel(final Panel mainPanel) {
    throw new UnsupportedOperationException("TODO: auto-generated method stub");
  }
  
  public void createMainTemplate(final Panel mainPanel) {
    this.setTitle("Seguidor de carrera");
    Panel panelLaberintos = new Panel(mainPanel);
    List<Object> _list = new List<Object>(panelLaberintos);
    final Procedure1<List<Object>> _function = new Procedure1<List<Object>>() {
      public void apply(final List<Object> it) {
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
