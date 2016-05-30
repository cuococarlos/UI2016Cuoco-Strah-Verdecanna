package gatoEncerradoTestParte2

import org.junit.Before
import dominioElementosDeljuego.Item
import dominioElementosDeljuego.Habitacion
import dominioElementosDeljuego.Laberinto
import org.junit.Test
import static org.junit.Assert.*
import dominioElementosDeljuego.Jugador
import dominioElementosDeljuego.AccionIrAOtraHabitacion
import dominioElementosDeljuego.AccionAgarrarUnElemento
import dominioElementosDeljuego.AccionUsarUnElemento

class TestRealizarUnAccion {
	Habitacion habActual
	Habitacion habDestino
	Jugador jug1
	Item item1
	Laberinto lab1
	@Before	
def void setUp(){
		habActual= new Habitacion("Comedor")
		habDestino=new Habitacion("Salon")
		jug1 =new Jugador("Batman")
		item1= new Item ("Espada")
		habDestino.agregarElementoALaHabitacion(item1)
		habActual.agregarAccion(new AccionIrAOtraHabitacion(habDestino))
		habActual.esHabitacionInicial()
		habDestino.agregarAccion(new AccionAgarrarUnElemento(item1))
		habDestino.agregarAccion(new AccionUsarUnElemento(item1,new AccionIrAOtraHabitacion(habActual)))
		lab1= new Laberinto("TEST")
		lab1.agregarHabitacionPreArmada(habActual)
		lab1.agregarHabitacionPreArmada(habDestino)
		jug1.inicializarPartida(lab1)
		}
		
	@Test
	def void probarAccionDeCambiarDeHabitacion(){
		assertTrue(habActual.isHabitacionInicial)
		assertEquals(jug1.partidaJugando.inventario.length, 0)
		assertEquals(jug1.partidaJugando.habitacionActual,habActual)
		jug1.partidaJugando.habitacionActual.acciones.get(0).ejecutar(jug1,jug1.partidaJugando.habitacionActual)
		assertEquals(jug1.partidaJugando.habitacionActual, habDestino)
	}
	@Test
	def void probarAccionDeAgarrarUnItemDeHabitacion(){
		//Cambio de habitacion
		assertTrue(habActual.isHabitacionInicial)
		jug1.partidaJugando.habitacionActual.acciones.get(0).ejecutar(jug1,jug1.partidaJugando.habitacionActual)
		assertEquals(jug1.partidaJugando.inventario.length, 0)
		assertEquals(jug1.partidaJugando.habitacionActual,habDestino)
		jug1.partidaJugando.habitacionActual.acciones.get(0).ejecutar(jug1,jug1.partidaJugando.habitacionActual)
		assertTrue(jug1.partidaJugando.inventario.contains(item1))
		}
	@Test	
	def void probarAccionDeUsarUnItem(){
		assertTrue(habActual.isHabitacionInicial)
		jug1.partidaJugando.habitacionActual.acciones.get(0).ejecutar(jug1,jug1.partidaJugando.habitacionActual)
		jug1.partidaJugando.habitacionActual.acciones.get(0).ejecutar(jug1,jug1.partidaJugando.habitacionActual)
		assertTrue(jug1.partidaJugando.inventario.contains(item1))
		//AccionDeUsar
		jug1.partidaJugando.habitacionActual.acciones.get(0).ejecutar(jug1,jug1.partidaJugando.habitacionActual)
		//Ya no contiene el item
		assertFalse(jug1.partidaJugando.inventario.contains(item1))
		//Se le agrego la accion de volver a la otra habitacion
		assertFalse(jug1.partidaJugando.accionesHabitacionActual.isEmpty)
		jug1.partidaJugando.habitacionActual.acciones.get(0).ejecutar(jug1,jug1.partidaJugando.habitacionActual)
		//Comprobar que la accion de volver a la otra funciona
		assertEquals(jug1.partidaJugando.habitacionActual,habActual)
	}	
		
		
		
}