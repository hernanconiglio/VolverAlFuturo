import personajes.*

class ExceptionSinElementos inherits Exception {}
 
object deLorean{
 	var property combustible = plutonio
 	const pasajeros = #{}

 	method subirPasajero(pasajero){
 		pasajeros.add(pasajero)
 	}
 	method bajarPasajero(pasajero){
 		pasajeros.remove(pasajero)
 	}
 	method viajarA(unDestino,unaFecha){
 		pasajeros.forEach({p => combustible.efectoSecundario(p)})
 	}
 	method huboUnProblemaCon(unPersonaje,unaFecha){
 		// hacer
 	}
 }
 

object plutonio  {
	method efectoSecundario(unPersonaje) {
		unPersonaje.reducirAltura(1)	}
}

object nafta  {
	method efectoSecundario(unPersonaje) {
		if(unPersonaje.esMayor()) unPersonaje.rejuvenecer(10)
		else unPersonaje.envejecer(5)
	}
}

object electricidad  {
	method efectoSecundario(unPersonaje) {
		if(unPersonaje.noTieneElementos()) self.error("el personaje no tiene elementos")
		unPersonaje.perderElementoMasAntiguo()
	}
}
object basura  {
	method efectoSecundario(unPersonaje) {
		// a pensar
		
	}
}
