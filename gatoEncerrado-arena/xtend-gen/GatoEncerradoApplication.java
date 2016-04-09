import org.uqbar.arena.Application;
import org.uqbar.arena.windows.Window;

@SuppressWarnings("all")
public class GatoEncerradoApplication extends Application {
  protected Window<?> createMainWindow() {
    throw new Error("Unresolved compilation problems:"
      + "\nInvalid number of arguments. The constructor Laberinto(String) is not applicable without arguments");
  }
  
  public static void main(final String[] args) {
    GatoEncerradoApplication _gatoEncerradoApplication = new GatoEncerradoApplication();
    _gatoEncerradoApplication.start();
  }
}
