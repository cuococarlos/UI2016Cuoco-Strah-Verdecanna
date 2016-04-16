import dominioElementosDeljuego.Habitacion;
import dominioElementosDeljuego.Laberinto;
import org.eclipse.xtext.xbase.lib.ObjectExtensions;
import org.eclipse.xtext.xbase.lib.Procedures.Procedure1;
import org.uqbar.arena.layout.ColumnLayout;
import org.uqbar.arena.widgets.Button;
import org.uqbar.arena.widgets.Panel;
import org.uqbar.arena.windows.SimpleWindow;
import org.uqbar.arena.windows.WindowOwner;
import org.uqbar.lacar.ui.model.Action;

@SuppressWarnings("all")
public class AgregarAccionWindow extends SimpleWindow<AgregarAccionAppModel> {
  public AgregarAccionWindow(final WindowOwner parent, final Habitacion hab, final Laberinto lab) {
    super(parent, new AgregarAccionAppModel(lab, hab));
    this.setTitle("Agregar Acción");
    this.setTaskDescription("Seleccionar una acción a agregar");
  }
  
  public void createFormPanel(final Panel mainPanel) {
    final Panel editorPanel = new Panel(mainPanel);
    ColumnLayout _columnLayout = new ColumnLayout(3);
    editorPanel.setLayout(_columnLayout);
  }
  
  protected void addActions(final Panel actionsPanel) {
    Button _button = new Button(actionsPanel);
    final Procedure1<Button> _function = new Procedure1<Button>() {
      public void apply(final Button it) {
        it.setCaption("Agregar acción de ir a otra habitación");
        it.setAsDefault();
        final Action _function = new Action() {
          public void execute() {
            AgregarAccionWindow.this.IrAPantallaAgregarAccionIrAOtraHabitacion();
          }
        };
        it.onClick(_function);
      }
    };
    ObjectExtensions.<Button>operator_doubleArrow(_button, _function);
    Button _button_1 = new Button(actionsPanel);
    final Procedure1<Button> _function_1 = new Procedure1<Button>() {
      public void apply(final Button it) {
        it.setCaption("Agregar acción de agarrar un elemento");
        it.setAsDefault();
        final Action _function = new Action() {
          public void execute() {
            AgregarAccionWindow.this.IrAPantallaAgregarAccionAgarrarUnElemento();
          }
        };
        it.onClick(_function);
      }
    };
    ObjectExtensions.<Button>operator_doubleArrow(_button_1, _function_1);
    Button _button_2 = new Button(actionsPanel);
    final Procedure1<Button> _function_2 = new Procedure1<Button>() {
      public void apply(final Button it) {
        it.setCaption("Agregar acción de usar un elemento");
        it.setAsDefault();
        final Action _function = new Action() {
          public void execute() {
            AgregarAccionWindow.this.IrAPantallaAgregarAccionUsarUnElemento();
          }
        };
        it.onClick(_function);
      }
    };
    ObjectExtensions.<Button>operator_doubleArrow(_button_2, _function_2);
  }
  
  public void IrAPantallaAgregarAccionIrAOtraHabitacion() {
    AgregarAccionAppModel _modelObject = this.getModelObject();
    AgregarAccionAppModel _modelObject_1 = this.getModelObject();
    AgregarAccionIrAOtraHabitacionWindow _agregarAccionIrAOtraHabitacionWindow = new AgregarAccionIrAOtraHabitacionWindow(this, _modelObject.habitacionActual, _modelObject_1.laberintoActual);
    _agregarAccionIrAOtraHabitacionWindow.open();
  }
  
  public void IrAPantallaAgregarAccionAgarrarUnElemento() {
    AgregarAccionAppModel _modelObject = this.getModelObject();
    AgregarAccionAppModel _modelObject_1 = this.getModelObject();
    AgregarAccionAgarrarElementoWindow _agregarAccionAgarrarElementoWindow = new AgregarAccionAgarrarElementoWindow(this, _modelObject.habitacionActual, _modelObject_1.laberintoActual);
    _agregarAccionAgarrarElementoWindow.open();
  }
  
  public void IrAPantallaAgregarAccionUsarUnElemento() {
    AgregarAccionAppModel _modelObject = this.getModelObject();
    AgregarAccionAppModel _modelObject_1 = this.getModelObject();
    AgregarAccionUsarElementoWindow _agregarAccionUsarElementoWindow = new AgregarAccionUsarElementoWindow(this, _modelObject.habitacionActual, _modelObject_1.laberintoActual);
    _agregarAccionUsarElementoWindow.open();
  }
}
