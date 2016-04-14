import dominioElementosDeljuego.BibliotecaDeJuego;
import dominioElementosDeljuego.Laberinto;
import java.util.List;
import org.eclipse.xtend.lib.annotations.Accessors;
import org.eclipse.xtext.xbase.lib.Pure;
import org.uqbar.commons.utils.Observable;

@Accessors
@Observable
@SuppressWarnings("all")
public class BibliotecaDeJuegoAppModel {
  private BibliotecaDeJuego juego;
  
  private Laberinto laberintoSeleccionado;
  
  public BibliotecaDeJuegoAppModel(final BibliotecaDeJuego juego) {
    this.juego = juego;
  }
  
  public List<Laberinto> getLaberintos() {
    return this.juego.getLaberintos();
  }
  
  @Pure
  public BibliotecaDeJuego getJuego() {
    return this.juego;
  }
  
  public void setJuego(final BibliotecaDeJuego juego) {
    this.juego = juego;
  }
  
  @Pure
  public Laberinto getLaberintoSeleccionado() {
    return this.laberintoSeleccionado;
  }
  
  public void setLaberintoSeleccionado(final Laberinto laberintoSeleccionado) {
    this.laberintoSeleccionado = laberintoSeleccionado;
  }
}
