import dominioElementosDeljuego.BibliotecaDeJuego;
import org.eclipse.xtext.xbase.lib.ObjectExtensions;
import org.eclipse.xtext.xbase.lib.Procedures.Procedure1;
import org.uqbar.arena.Application;
import org.uqbar.arena.windows.Window;

@SuppressWarnings("all")
public class AdministradorAplication extends Application {
  protected Window<?> createMainWindow() {
    AdministradorWindow _xblockexpression = null;
    {
      BibliotecaDeJuego _bibliotecaDeJuego = new BibliotecaDeJuego();
      final Procedure1<BibliotecaDeJuego> _function = new Procedure1<BibliotecaDeJuego>() {
        public void apply(final BibliotecaDeJuego it) {
        }
      };
      final BibliotecaDeJuego biblioteca = ObjectExtensions.<BibliotecaDeJuego>operator_doubleArrow(_bibliotecaDeJuego, _function);
      _xblockexpression = new AdministradorWindow(this, biblioteca);
    }
    return _xblockexpression;
  }
  
  public static void main(final String[] args) {
    AdministradorAplication _administradorAplication = new AdministradorAplication();
    _administradorAplication.start();
  }
}
