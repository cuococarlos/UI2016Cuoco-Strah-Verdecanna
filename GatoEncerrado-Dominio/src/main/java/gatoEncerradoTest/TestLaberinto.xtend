package gatoEncerradoTest

import dominioElementosDeljuego.Laberinto
import org.junit.Before
import org.junit.Test

import static org.junit.Assert.*
import dominioElementosDeljuego.Habitacion

class TestLaberinto {

	Laberinto laberinto
	Habitacion comedor
	Habitacion cocina

	@Before
	def void setUp() {
		laberinto = new Laberinto
		comedor = new Habitacion("Comedor")
		cocina = new Habitacion("Cocina")
	}

	@Test
	def crearLaberintoTest() {
		assertNull(laberinto.actualDeJuego)
		assertNull(laberinto.habitacionALaCualIr)
		assertTrue(laberinto.habitacionesQueLaComponen.isEmpty)

	}

	@Test
	def agregarHabitacionTest() {
		laberinto.agregarHabitacion("patio")
		assertEquals(laberinto.habitaciones.length,1)
		assertEquals(laberinto.habitaciones.get(0).nombreHabitacion,"patio")
	}
	
	@Test
	def cambiarHabitacionDeJuegoTest(){
		laberinto.actualDeJuego = comedor
		assertEquals(laberinto.cambiarHabitacionDeJuego(cocina),cocina)
		assertFalse(laberinto.actualDeJuego.equals(comedor))	
	}
	
	@Test
	def quitarHabitacionTest(){
		laberinto.agregarHabitacion("Dormitorio")
		laberinto.quitarHabitacion(cocina)
		assertEquals(laberinto.habitaciones.length,1)
		assertFalse(laberinto.habitaciones.contains(cocina)) 		
	}
}
