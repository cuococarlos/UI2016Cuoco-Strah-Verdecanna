package gatoEncerradoTest

import org.junit.Test

import static org.junit.Assert.*
import dominioElementosDeljuego.Habitacion
import org.eclipse.xtend.lib.annotations.Accessors
import org.junit.Before
import dominioElementosDeljuego.Item
import dominioElementosDeljuego.Accion
import dominioElementosDeljuego.AccionAgarrarUnElemento

@Accessors
class TestHabitacion {
	Habitacion hab
	Item i
	Accion acc1

	@Before
	def void setUp() {
		hab = new Habitacion()
		i = new Item("Llave")
		acc1 = new AccionAgarrarUnElemento(i)

	}

	@Test
	def void habitacionVacio() {
		assertFalse(hab.isHabitacionInicial)
		assertFalse(hab.isHabitacionFinal)
		assertEquals(hab.acciones.length, 0)
		assertEquals(hab.itemsHabitacion.length, 0)
		assertEquals(hab.habitaciones.length, 0)
	}

	@Test
	def void habitacionConAccionesDeAgarrar() {
		acc1.asignarAHabitacion(hab)
		assertEquals(hab.acciones.get(0), acc1)
		assertEquals(hab.itemsHabitacion.get(0), i)

	}

}
