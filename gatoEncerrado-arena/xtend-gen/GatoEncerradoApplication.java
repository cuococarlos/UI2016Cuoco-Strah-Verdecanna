import dominioElementosDeljuego.BibliotecaDeJuego;
import org.uqbar.arena.Application;
import org.uqbar.arena.windows.Window;

@SuppressWarnings("all")
public class GatoEncerradoApplication extends Application {
  protected Window<?> createMainWindow() {
    BibliotecaDeJuego _bibliotecaDeJuego = new BibliotecaDeJuego();
    return new AdministradorWindow(this, _bibliotecaDeJuego);
  }
  
  public static void main(final String[] args) {
    GatoEncerradoApplication _gatoEncerradoApplication = new GatoEncerradoApplication();
    _gatoEncerradoApplication.start();
  }
}
