import dominioElementosDeljuego.AccionIrAOtraHabitacion;
import org.uqbar.arena.Application;
import org.uqbar.arena.windows.Window;

@SuppressWarnings("all")
public class GatoEncerradoApplication extends Application {
  protected Window<?> createMainWindow() {
    AccionIrAOtraHabitacion _accionIrAOtraHabitacion = new AccionIrAOtraHabitacion();
    return new AgregarAccionWindow(this, _accionIrAOtraHabitacion);
  }
  
  public static void main(final String[] args) {
    GatoEncerradoApplication _gatoEncerradoApplication = new GatoEncerradoApplication();
    _gatoEncerradoApplication.start();
  }
}
