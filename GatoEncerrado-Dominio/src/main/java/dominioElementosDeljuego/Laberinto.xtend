package dominioElementosDeljuego

import java.util.ArrayList
import java.util.List
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable
import javax.xml.ws.Action

@Observable
@Accessors
class Laberinto {
	List<Habitacion> habitacionesQueLaComponen = new ArrayList<Habitacion>
}