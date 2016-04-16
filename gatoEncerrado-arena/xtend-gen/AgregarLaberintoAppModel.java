import dominioElementosDeljuego.BibliotecaDeJuego;
import org.uqbar.commons.utils.Observable;

@Observable
@SuppressWarnings("all")
public class AgregarLaberintoAppModel {
  private BibliotecaDeJuego juego;
  
  private String nombreLaberinto;
  
  public String getNombreLaberinto() {
    return this.nombreLaberinto;
  }
  
  public void setNombreLaberinto(final String nombre) {
    this.nombreLaberinto = nombre;
  }
  
  public AgregarLaberintoAppModel(final BibliotecaDeJuego juego) {
    this.juego = juego;
  }
  
  public void crearLaberinto() {
    this.juego.crearYAgregarLaberinto(this.nombreLaberinto);
  }
}
