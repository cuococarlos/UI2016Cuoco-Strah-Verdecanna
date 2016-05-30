package gatoEncerradoTest

import org.junit.Before
import dominioElementosDeljuego.Item
import dominioElementosDeljuego.Habitacion
import appModels.AgregarAccionIrAOtraHabitacionAppModel
import dominioElementosDeljuego.Laberinto
import appModels.AgregarAccionAgarrarElementoAppModel
import org.junit.Test
import static org.junit.Assert.*
class TestAccion {
	Habitacion habitacionActual
	Habitacion habitacionDestino
	Item i
	AgregarAccionAgarrarElementoAppModel app 
	Laberinto lab
	
	
	
	@Before
	def void setUp(){
		habitacionActual= new Habitacion("Comedor")
		habitacionDestino=new Habitacion("Salon")
		i=new Item("cuchillo")
		lab=new Laberinto("casa")
		app=new AgregarAccionAgarrarElementoAppModel(habitacionActual,lab)
		app.itemParaAgregar = i
	}
	
	@Test
	def probarAccion(){
		assertEquals(habitacionActual.acciones.length,0)
		app.crearYAgregarAccionDeAgarrarElemento()
		assertEquals(habitacionActual.acciones.length,1)
		}
	
		
		
}