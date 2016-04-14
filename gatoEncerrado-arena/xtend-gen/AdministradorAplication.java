import dominioElementosDeljuego.BibliotecaDeJuego;
import dominioElementosDeljuego.Habitacion;
import dominioElementosDeljuego.Laberinto;
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
          Laberinto _laberinto = new Laberinto("lab");
          final Procedure1<Laberinto> _function = new Procedure1<Laberinto>() {
            public void apply(final Laberinto it) {
              Habitacion _habitacion = new Habitacion("Habitacion1");
              it.agregarHabitacion(_habitacion);
            }
          };
          Laberinto _doubleArrow = ObjectExtensions.<Laberinto>operator_doubleArrow(_laberinto, _function);
          it.agregarLaberinto(_doubleArrow);
          Laberinto _laberinto_1 = new Laberinto("lab2");
          final Procedure1<Laberinto> _function_1 = new Procedure1<Laberinto>() {
            public void apply(final Laberinto it) {
              Habitacion _habitacion = new Habitacion("Habitacion2");
              it.agregarHabitacion(_habitacion);
            }
          };
          Laberinto _doubleArrow_1 = ObjectExtensions.<Laberinto>operator_doubleArrow(_laberinto_1, _function_1);
          it.agregarLaberinto(_doubleArrow_1);
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
