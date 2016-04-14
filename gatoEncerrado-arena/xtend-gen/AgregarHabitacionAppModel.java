import dominioElementosDeljuego.Habitacion;
import dominioElementosDeljuego.Laberinto;
import org.eclipse.xtend.lib.annotations.Accessors;
import org.eclipse.xtext.xbase.lib.Pure;
import org.uqbar.commons.utils.Observable;

@Accessors
@Observable
@SuppressWarnings("all")
public class AgregarHabitacionAppModel {
  private Laberinto laberintoActual;
  
  private Habitacion habitacionActual;
  
  public AgregarHabitacionAppModel(final Laberinto laberinto) {
    this.laberintoActual = laberinto;
    Habitacion _habitacion = new Habitacion();
    this.habitacionActual = _habitacion;
  }
  
  public void crearYAgregarHabitacion() {
    this.laberintoActual.agregarHabitacion(this.habitacionActual);
  }
  
  @Pure
  public Laberinto getLaberintoActual() {
    return this.laberintoActual;
  }
  
  public void setLaberintoActual(final Laberinto laberintoActual) {
    this.laberintoActual = laberintoActual;
  }
  
  @Pure
  public Habitacion getHabitacionActual() {
    return this.habitacionActual;
  }
  
  public void setHabitacionActual(final Habitacion habitacionActual) {
    this.habitacionActual = habitacionActual;
  }
}
